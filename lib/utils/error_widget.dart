
import 'package:flutter/material.dart';

Widget error(context){
  return Center(
    child: Column(
      children: [
        Image.asset('assets/error_icon.jpg', width: 100, height: 100),
        Text(
          'Something went wrong. Please try again later.',
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}