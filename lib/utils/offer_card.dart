import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildOfferCard({
  required BuildContext context,
  required String offerTitle,
  required double price,
  required List<String>? imageUrl,
  required bool isFavourite,
  required VoidCallback onFavouriteToggle,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.pushReplacementNamed(context,'/plantDetails');
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
                    child: Image.network(
                      'https://i.pinimg.com/564x/d6/cc/91/d6cc91dc6634942ee7d911b457377129.jpg',
                      fit: BoxFit.cover,
                      height: 300,
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
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)
                        ),
                        child: Icon(
                          isFavourite ? Icons.favorite : Icons.favorite_border,
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
