import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmptyListWidget extends StatelessWidget {
  final String imagePath;
  final String message;
  final String buttonText;
  final String buttonRoute;

  const EmptyListWidget({
    required this.imagePath,
    required this.message,
    required this.buttonText,
    required this.buttonRoute,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 225, height: 238),
          Text(message),
          OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(context, buttonRoute);
            },
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }


}
