import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    minimumSize: Size(double.infinity, 50),
    backgroundColor: Color(0xFF589A73),
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)
        )
    ),
  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24)
);

final TextStyle primaryTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

