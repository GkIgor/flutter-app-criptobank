import 'package:flutter/material.dart';

class StylesProgram {
  static const TextStyle authButton = TextStyle(
    color: Color.fromRGBO(169, 60, 227, 1),
  );

  static final BoxDecoration inputDecoration = BoxDecoration(
    border: Border.all(
      width: 0,
      color: Colors.deepPurple,
    ),
    color: Colors.white,
    borderRadius: const BorderRadius.all(
      Radius.circular(20),
    ),
  );

  static const EdgeInsets contentPadding =
      EdgeInsets.symmetric(vertical: 15, horizontal: 25);

  static const TextStyle errorStyle = TextStyle(
    fontSize: 14,
    color: Colors.white
  );
}
