import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker_view/multi_image_picker_view.dart';
import 'package:path_provider/path_provider.dart';
import 'package:plants_manager/domain/provider/plants_provider.dart';

import 'package:plants_manager/utils/headline_text.dart';
import 'package:plants_manager/utils/primary_button.dart';
import 'package:path/path.dart' as path;

import '../domain/provider/recognise_plant_provider.dart';

import '../model/plant_user.dart';
import '../utils/input_style.dart';

class AddPlant extends ConsumerStatefulWidget {
  const AddPlant({super.key});

  @override
  ConsumerState createState() => _AddPlantState();
}

class _AddPlantState extends ConsumerState<AddPlant> {
  final TextEditingController nicknameController = TextEditingController();
  final TextEditingController plantLocationController = TextEditingController();

  String? plantTypeValue;

  final MultiImagePickerController _multiImagePickerController =
      MultiImagePickerController(
    maxImages: 10,
    images: <ImageFile>[],
    picker: (bool allowMultiple) async {
      final pickedImages = await ImagePicker().pickMultiImage();
      return pickedImages
              .map((e) => ImageFile(
                    UniqueKey().toString(),
                    name: path.basename(e.path),
                    extension: path.extension(e.path),
                    path: e.path,
                  ))
              .toList();
    },
  );

  final ImagePicker _picker = ImagePicker();
  List<Step> steps = [];
  File? _image;
  int currentStep = 0;

  continueStep() {
    if (currentStep < 3) {
      setState(() {
        currentStep++;
      });
    } else {
      _saveDataToDatabase();
      Navigator.pushNamed(context, '/waterSchedule');
    }
  }

  onStepCancel() {
    if (currentStep > 0) {
      setState(() {
        currentStep--;
      });
    }
  }

  onStepTapped(int value) {
    setState(() {
      currentStep = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final planType = ref.watch(plantTypeProvider);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stepper(
                  type: StepperType.horizontal,
                  currentStep: currentStep,
                  onStepContinue: continueStep,
                  onStepCancel: onStepCancel,
                  onStepTapped: onStepTapped,
                  steps: [
                    Step(
                        title: const Text(''),
                        content: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Plant type $planType',
                                  style: headlineMedium),
                            ),
                            const Text(
                                'Upload picture to recognise plant type or search'),
                            const SizedBox(height: 32.0),
                            //unimplemented
                            SearchAnchor(builder: (BuildContext context,
                                SearchController controller) {
                              return SearchBar(
                                controller: controller,
                                onTap: () {
                                  controller.openView();
                                },
                                onChanged: (_) {
                                  controller.openView();
                                },
                                leading: const Icon(Icons.search),
                                hintText: 'Search plant type',
                                backgroundColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.grey.shade100),

                                //hintStyle: TextStyle(color: Colors.grey),
                              );
                            }, suggestionsBuilder: (context, controller) {
                              return List<ListTile>.generate(5, (int index) {
                                final String item = 'item $index';
                                return ListTile(
                                  title: Text(item),
                                  onTap: () {
                                    setState(() {
                                      controller.closeView(item);
                                    });
                                  },
                                );
                              });
                            }),
                            const SizedBox(height: 32.0),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: OutlinedButton(
                                        style: primaryButtonStyle,
                                        onPressed: () async {
                                          File? pickedImage =
                                              await _pickImage();
                                          setState(() {
                                            _image = pickedImage;
                                          });
                                          _uploadImage();
                                        },
                                        child: Text('Browse file',
                                            style: primaryTextStyle)),
                                  ),
                                  SizedBox(width: 8.0),
                                  Expanded(
                                    child: OutlinedButton(
                                        onPressed: () async {
                                          analyseImage(context, ref);
                                        },
                                        child: const Text('Analyse')),
                                  ),
                                ]),

                            const SizedBox(height: 32.0),
                            _image == null
                                ? const Text('No image selected')
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Container(
                                        width: 200,
                                        height: 200,
                                        child: Image.file(
                                          _image!,
                                          fit: BoxFit.cover,
                                        ))),
                            const SizedBox(height: 32.0),
                            Text(ref.watch(plantTypeProvider))
                          ],
                        )),
                    Step(
                      title: const Text(''),
                      content: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Pick photos', style: headlineMedium),
                            const SizedBox(height: 32.0),
                            MultiImagePickerView(
                                shrinkWrap: true,
                                controller: _multiImagePickerController)
                          ],
                        ),
                      ),
                    ),
                    Step(
                        title: const Text(''),
                        content: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Plant Nickname', style: headlineMedium),
                            TextFormField(
                              controller: nicknameController,
                              decoration: filledInputDecoration,
                            ),
                            const SizedBox(height: 32.0)
                          ],
                        )),
                    Step(
                        title: const Text(''),
                        content: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Add location ', style: headlineMedium),
                            TextFormField(
                              controller: plantLocationController,
                              decoration: filledInputDecoration,
                            ),
                            const SizedBox(height: 32.0)
                          ],
                        ))
                  ]),
            )
          ],
        ),
      ),
    );
  }

  Future<File?> _pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      final Directory appDir = await getApplicationDocumentsDirectory();
      final String appDirPath = appDir.path;
      final String fileName = path.basename(image.path);
      final File localImage =
          await File(image.path).copy('$appDirPath/$fileName');

      return localImage;
    }
    return null;
  }

  _saveDataToDatabase() async {
    /*
    PlantUser myPlantUser = PlantUser(
      id: 4,
      userId: '101',
      plantTypeId: 201,
      nickname: 'Greenie',
      acquiredDate: DateTime(2023, 5, 15),
      lastWatered: DateTime(2023, 5, 20),
      wateringFrequencyDays: 7,
      imageUrl: 'https://example.com/greenie.jpg',
      location: 'Living room',
    );



    final addNewPlant = ref.watch(addNewPlantProvider(myPlantUser));
    */

  }

  _uploadImage() {
    if (_image != null) {
      final imageUrlState = ref.watch(FetchImageUrlProvider(_image!));
      if (imageUrlState.asData?.hasValue == true) {
        ref.read(temporaryImageUrl.notifier).state = imageUrlState.value!;
        print('co w zmiennej prov ${ref.watch(temporaryImageUrl)}');
      }
    }
  }

  void analyseImage(BuildContext context, WidgetRef ref) async {
    final temporaryImgUrl = ref.watch(temporaryImageUrl);
    if (temporaryImgUrl.isNotEmpty && temporaryImgUrl != '') {
      try {

      } catch (error) {

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text('Failed to recognize plant type: $error'),
              actions: <Widget>[
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    }

}}
