import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


Widget buildCategoryItem({required String categoryName, required String categoryImageUrl}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Container(
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFFF5F6F7),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(categoryImageUrl, height: 64, width: 64),
          ),
        ),
        SizedBox(height: 8.0),
        Container(
          width: 100,
          child: Text(
            categoryName,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            style: TextStyle(fontSize: 14.0),
          ),
        ),
      ],
    ),
  );
}
