import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageGallery extends StatelessWidget {
  final List<String> imageUrls;
  final Function(String) onRemove; // Callback to remove an image

  ImageGallery({required this.imageUrls, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
      ),
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Image.network(imageUrls[index], fit: BoxFit.cover),
            Positioned(
              right: 8,
              top: 8,
              child: IconButton(
                icon: Icon(Icons.remove_circle, color: Colors.red),
                onPressed: () => onRemove(imageUrls[index]), // Call the callback
              ),
            ),
          ],
        );
      },
    );
  }
}
