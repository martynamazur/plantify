import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final ButtonStyle secondaryButtonStyle = OutlinedButton.styleFrom(
  minimumSize: Size(double.infinity, 50),

  side: BorderSide(color: Colors.black),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)),
  ),
  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
);
final TextStyle secondaryTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);
