import 'package:flutter/material.dart';

class CustomInputBorders {
  static final InputBorder customBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(color: Colors.grey, width: 1.0),
  );

  static final InputBorder focusedCustomBorder = customBorder.copyWith(
    borderSide: BorderSide(color: Colors.blue, width: 2.0),
  );

  static final InputBorder enabledCustomBorder = customBorder;
}
