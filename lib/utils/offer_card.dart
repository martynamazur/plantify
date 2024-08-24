import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildOfferCard({
  required String offerId,
  required BuildContext context,
  required String offerTitle,
  required double price,
  required List<String>? imageUrl,
  required bool isFavourite,
  required VoidCallback onFavouriteToggle,
  required String routeName
}) {
  return GestureDetector(
    onTap: () {
      Navigator.pushReplacementNamed(context,routeName, arguments: {
        'plantId': offerId
      });
    },
    child: Card(
      elevation: 4,
      shadowColor: Colors.grey.withOpacity(0.5),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    child: imageUrl != null && imageUrl.isNotEmpty
                        ? Image.network(
                      imageUrl.first,
                      fit: BoxFit.cover,
                      height: 300,
                    )
                        : Center(
                      child: Text('No Image Available'),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      onPressed: onFavouriteToggle,
                      icon: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Color(0xFFF5F6F7),
                              borderRadius: BorderRadius.circular(30)
                        ),
                        child: Icon(
                          isFavourite ? Icons.favorite : Icons.favorite_border,
                          color: isFavourite? Colors.red : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Text(
              offerTitle,
              style: TextStyle(fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Text(
              '\$${price.toString()}',
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
          ],
        ),
      ),
    ),
  );
}
