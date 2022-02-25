import 'package:flutter/material.dart';

final cdzTheme = ThemeData(
  colorScheme: ThemeData().colorScheme.copyWith(
        brightness: Brightness.light,
        background: Colors.blue.shade50,
        primary: Colors.yellow,
        secondary: Colors.red,
        tertiary: Colors.red,
      ),
  fontFamily: 'CDZ',
  useMaterial3: true,
);
