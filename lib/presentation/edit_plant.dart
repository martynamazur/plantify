import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker_view/multi_image_picker_view.dart';
import 'package:plants_manager/utils/error_widget.dart';
import 'package:plants_manager/utils/image_gallery.dart';

import '../domain/provider/edit_plant_provider.dart';
import '../domain/provider/plant_details_provider.dart';
import '../model/plant_user.dart';
import 'package:path/path.dart' as path;

class EditPlant extends ConsumerStatefulWidget {

  EditPlant({super.key});

  @override
  ConsumerState<EditPlant> createState() => _EditPlantState();
}

class _EditPlantState extends ConsumerState<EditPlant> {
  late final TextEditingController _nickname;
  late final TextEditingController _localization;
  final imageUrls = [
    'https://i.pinimg.com/564x/d6/cc/91/d6cc91dc6634942ee7d911b457377129.jpg',
    'https://fbxbpzmlcfnwkjfqofeu.supabase.co/storage/v1/object/public/plant-images/6511d95f-ceb5-4cc1-90ee-bea2e16fe2dd/temporaryImage/image.jpeg',
    'https://i.pinimg.com/564x/93/e5/13/93e513b95772349af5ba77a6013f3561.jpg',
    'https://fbxbpzmlcfnwkjfqofeu.supabase.co/storage/v1/object/public/plant-images/6511d95f-ceb5-4cc1-90ee-bea2e16fe2dd/temporaryImage/image.jpeg',
  ];



  @override
  void initState() {
    super.initState();
    _nickname = TextEditingController();
    _localization = TextEditingController();
  }

  @override
  void dispose() {
    _nickname.dispose();
    _localization.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final plantId = '';
    final plantDetails = ref.watch(getPlantProvider(plantId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Plant'),
      ),
      body: plantDetails.when(
          data: (data) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            Expanded(
              child: ImageGallery(
                imageUrls: imageUrls,
                onRemove: removeImage,
              ),
            ),

            TextField(
              controller: _nickname,
              decoration: InputDecoration(labelText: 'Nickname - ${data.nickname}'),
            ),
            TextField(
              controller: _localization,
              decoration: InputDecoration(labelText: 'Localization - ${data.localization}'),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement save functionality here
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
          error: (e, st) => error(context),
          loading: () => Center(child: CircularProgressIndicator()))
    );
  }

  void removeImage(String url) {
    setState(() {
      imageUrls.remove(url);
    });
  }
}
