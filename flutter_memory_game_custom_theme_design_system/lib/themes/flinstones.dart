import 'package:flutter/material.dart';

final flintstonesTheme = ThemeData(
  colorScheme: ThemeData().colorScheme.copyWith(
        brightness: Brightness.light,
        background: const Color.fromRGBO(255, 209, 128, 1),
        primary: Colors.black,
        secondary: Colors.orangeAccent.shade100,
        tertiary: Colors.black,
      ),
  fontFamily: 'Flintstones',
  useMaterial3: true,
);
