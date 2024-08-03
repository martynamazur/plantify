import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildOfferCard({
  required String offerTitle,
  required double price,
  required List<String>? imageUrl,
  required bool isFavourite,
  required VoidCallback onFavouriteToggle,
}) {
  return Card(
    elevation: 4.0,
    margin: EdgeInsets.all(8.0),
    child: LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          mainAxisSize: MainAxisSize.min, // Constrain the size of the Column
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container to ensure icon button does not overflow
            Container(
              padding: EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: onFavouriteToggle,
                icon: Icon(
                  isFavourite ? Icons.favorite : Icons.favorite_border,
                  color: Colors.redAccent,
                ),
              ),
            ),
            // Image placeholder with fixed height
            Container(
              height: constraints.maxHeight * 0.6, // Use 60% of the available height
              color: Colors.grey[200], // For visualization
              child: Center(child: Text('Image')),
            ),
            // Offer title with overflow handling
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                offerTitle,
                style: TextStyle(fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis, // Truncate text if needed
              ),
            ),
            // Offer price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                '\$${price.toString()}',
                style: TextStyle(fontSize: 16.0, color: Colors.green),
              ),
            ),
          ],
        );
      },
    ),
  );
}