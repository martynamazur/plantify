import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker_view/multi_image_picker_view.dart';
import 'package:path/path.dart' as path;
import 'package:plants_manager/domain/database/user_account_information.dart';
import 'package:plants_manager/domain/provider/category_provider.dart';
import 'package:plants_manager/domain/provider/user_account_information_provider.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import '../domain/database/category.dart';
import '../utils/custom_border.dart';
import '../utils/headline_text.dart';
import '../utils/input_field_global_settings.dart';

class CreateOffer extends ConsumerStatefulWidget {
  const CreateOffer({super.key});

  @override
  ConsumerState createState() => CreateOfferState();
}

class CreateOfferState extends ConsumerState<CreateOffer> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _personToContactNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _localizationController = TextEditingController();
  final _priceController = TextEditingController();
  final _categoryController = TextEditingController();

  final _maxTitleLength = 70;
  final _maxDescriptionLength = 250;

  String? _selectedPriceType;

  final MultiImagePickerController _multiImagePickerController =
      MultiImagePickerController(
    maxImages: 6,
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

  bool _isTitleValid = false;
  bool _isCategoryValid = false;
  bool _isPriceValid = false;
  bool _isCategorySelected = false;
  bool _isLocalizationValid = false;
  bool _isContactNameValid = false;

  int _selectedCategoryId = 0;

  final GlobalKey<CustomRadioButtonState> _radioKey =
      GlobalKey<CustomRadioButtonState>();

  @override
  void initState() {
    super.initState();
    _titleController.addListener(() {
      setState(() {
        _isTitleValid = _titleController.text.length >= 16;
      });
    });

    _categoryController.addListener(() {
      setState(() {
        _isCategoryValid = _categoryController.text.isNotEmpty;
      });
    });
    _priceController.addListener(() {
      setState(() {
        _isPriceValid = _priceController.text.isNotEmpty;
      });
    });
    _personToContactNameController.addListener(() {
      setState(() {
        _isContactNameValid = _personToContactNameController.text.isNotEmpty;
      });
    });

    _localizationController.addListener(() {
      setState(() {
        _isLocalizationValid = _localizationController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _personToContactNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _localizationController.dispose();
    _priceController.dispose();
    _categoryController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userInformation = ref.watch(getUserAccountInformationProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Row(
          children: [Text('Add new offer ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)), Icon(Icons.nature_rounded, color: Colors.white)],
        ),
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildOfferInformationForm(),
                  const SizedBox(height: 32.0),
                  const Divider(),
                  const SizedBox(height: 12.0),
                  _buildContactInformationForm(userInformation),
                  const SizedBox(height: 24.0),
                  Container(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Check before adding'),
                      style: secondaryButton,
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Container(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        _validateAndSubmit();
                      },
                      style: primaryButton,
                      child: Text('Add offer',style: primaryText),
                    ),
                  ),
                  const SizedBox(height: 12.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOfferInformationForm() {
    return Column(
      children: [
        _buildImagePicker(),
        const SizedBox(height: 24.0),
        _buildOfferTitle(),
        _buildDescription(),
        _buildCategory(),
        const SizedBox(height: 32.0),
        _buildPriceTypeSelection(),
        if (_selectedCategoryId != 8 || _selectedCategoryId != 9 || _selectedCategoryId != 0) _buildPriceForm(),
      ],
    );
  }

  Widget _buildContactInformationForm(
      AsyncValue<UserAccountInformation> userInformation) {
    return userInformation.when(
      data: (user) {
        _initializeControllers(user);
        return Column(
          children: [
            Text('Contact information', style: headline),
            const SizedBox(height: 18.0),
            _buildLocalization(),
            const SizedBox(height: 12.0),
            _buildPersonToContact(),
            const SizedBox(height: 12.0),
            _buildEmailAddress(),
            const SizedBox(height: 12.0),
            _buildPhoneNumber(),
          ],
        );
      },
      loading: () => const CircularProgressIndicator(),
      error: (error, stackTrace) => Text('Error: $error'),
    );
  }

  Widget _buildImagePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          child: Text('Add photos*', style: headlineOffer),
        ),
        MultiImagePickerView(
          shrinkWrap: true,
          controller: _multiImagePickerController,
        ),
      ],
    );
  }

  Widget _buildOfferTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text('Title*', style: headlineOffer),
        ),
        TextFormField(
          controller: _titleController,
          maxLength: _maxTitleLength,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Title cannot be empty';
            } else if (value.length < 16) {
              return 'Title must be at least 16 characters long';
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: 'ex. lorem ipsum',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border: textFordFieldBorderPrimary,
            suffixIcon: _titleController.text.isNotEmpty
                ? (_isTitleValid
                    ? const Icon(Icons.check_circle, color: Colors.green)
                    : const Icon(Icons.error, color: Colors.red))
                : null,
          ),
        ),
      ],
    );
  }

  Widget _buildCategory() {
    return Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
      final categoriesAsyncValue = ref.watch(getCategoriesProvider);
      return categoriesAsyncValue.when(
          data: (categories) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text('Category*', style: headlineOffer),
                ),
                TextFormField(
                    controller: _categoryController,
                    readOnly: false,
                    onTap: () {
                      _openFullScreenDialog(context, categories);
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Pick category';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'Choose',
                        border: textFordFieldBorderPrimary,
                        suffixIcon: getValidationFeedbackIconDropDown(
                            _isCategoryValid,
                            _categoryController.text.isNotEmpty)))
              ],
            );
          },
          loading: () => const CircularProgressIndicator(),
          error: (err, stack) => Text('Error: $err'));
    });
  }

  void _openFullScreenDialog(BuildContext context, List<Category> categories) {
    showModalBottomSheet(
        useSafeArea: true,
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return Scaffold(
              appBar: AppBar(
                title: Text('Select a category', style: headlineOffer),
                leading: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                ),
              ),
              body: ListView.separated(
                  itemCount: categories.length,
                  separatorBuilder: (context, index) => const SizedBox(height: 16.0),
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          _categoryController.text = category.categoryName;
                          setState(() {
                            _selectedCategoryId = category.categoryId;
                          });

                          _isCategorySelected = true;

                          Navigator.of(context).pop();
                        },
                        child: Card(
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            side: BorderSide(
                              color: Colors.grey.withOpacity(0.3),
                              width: 1.0,
                            ),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(category.categoryImagePath),
                                Text(category.categoryName),
                                const Icon(Icons.arrow_forward_ios_rounded)
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }));
        });
  }

  Widget _buildDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text('Description', style: headlineOffer),
        ),
        TextFormField(
          controller: _descriptionController,
          maxLines: 6,
          maxLength: _maxDescriptionLength,
          decoration: InputDecoration(
            hintText: 'Describe your plant',
            border: textFordFieldBorderPrimary,
          ),
        ),
      ],
    );
  }

  Widget _buildPersonToContact() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text('Person to Contact', style: headlineOffer),
        ),
        TextFormField(
          controller: _personToContactNameController,
          keyboardType: TextInputType.text,
          readOnly: false,
          decoration: InputDecoration(
              border: textFordFieldBorderPrimary,
              suffixIcon: getValidationFeedbackIcon(_isContactNameValid,
                  _personToContactNameController.text.isNotEmpty)),
        ),
      ],
    );
  }

  Widget _buildLocalization() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text('Localization*', style: headlineOffer),
        ),
        TextFormField(
          controller: _localizationController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Pick category';
            }
            return null;
          },
          decoration: InputDecoration(
              hintText: 'Choose',
              border: textFordFieldBorderPrimary,
              suffixIcon: getValidationFeedbackIconDropDown(
                  _isLocalizationValid,
                  _localizationController.text.isNotEmpty)),
        ),
      ],
    );
  }

  Widget _buildEmailAddress() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text('E-mail', style: headlineOffer),
        ),
        TextFormField(
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          readOnly: true,
          decoration: InputDecoration(
              border: textFordFieldBorderPrimary,
              suffixIcon: Icon(Icons.check_circle, color: Colors.green)),
        ),
      ],
    );
  }

  Widget _buildPhoneNumber() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text('Phone number', style: headlineOffer),
        ),
        TextFormField(
          controller: _phoneNumberController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'This field is mandatory';
            }
            return null;
          },
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            border: textFordFieldBorderPrimary,
          ),
        ),
      ],
    );
  }

  TextFormField _buildPriceForm() {
    return TextFormField(
        controller: _priceController,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Add price';
          }
          return null;
        },
        decoration: InputDecoration(
            suffix: const Text('PLN'),
            border: textFordFieldBorderPrimary,
            suffixIcon: getValidationFeedbackIcon(
                _priceController.text.isNotEmpty, _isPriceValid)));
  }

  Widget _buildPriceTypeSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text('Price*', style: headlineOffer),
        ),
        _buildPriceRadio(),
        SizedBox(height: 8.0)
      ],
    );
  }

  Widget _buildPriceRadio() {
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth / 3;

    return CustomRadioButton(
      width: buttonWidth,
      key: _radioKey,
      elevation: 0,
      absoluteZeroSpacing: true,
      enableButtonWrap: false,
      unSelectedColor: Theme.of(context).canvasColor,
      buttonLables: [
        'Price',
        'Free',
        'Exchange',
      ],
      buttonValues: [
        "PRICE",
        "FREE",
        "EXCHANGE",
      ],
      buttonTextStyle: const ButtonTextStyle(
        selectedColor: Colors.white,
        unSelectedColor: Colors.black,
        textStyle: TextStyle(fontSize: 16),
      ),
      radioButtonValue: (value) {
        print(value);
      },
      selectedColor: Colors.green,
      defaultSelected: "PRICE",
    );
  }

  Icon? getValidationFeedbackIcon(bool isValid, bool hasText) {
    if (!hasText) {
      return null;
    }
    return isValid
        ? const Icon(Icons.check_circle, color: Colors.green)
        : const Icon(Icons.error, color: Colors.red);
  }

  Icon getValidationFeedbackIconDropDown(bool isValid, bool hasText) {
    if (!hasText) {
      return const Icon(Icons.arrow_drop_down_outlined, color: Colors.grey);
    } else if (isValid) {
      return const Icon(Icons.check_circle, color: Colors.green);
    } else {
      return const Icon(Icons.error, color: Colors.red);
    }
  }

  void _initializeControllers(UserAccountInformation userInfo) {
    _personToContactNameController.text = userInfo.displayName ?? 'test';
    _emailController.text = userInfo.emailAddress;
    _phoneNumberController.text = userInfo.phoneNumber ?? '';
  }

  void _validateAndSubmit() {
    if (_formKey.currentState?.validate() == true) {
    } else {
      Flushbar(
        message: 'Add missing informations',
        duration: const Duration(seconds: 5),
        flushbarPosition: FlushbarPosition.BOTTOM,
        backgroundColor: Colors.deepOrangeAccent,
      ).show(context);
    }
  }
}
