import 'package:flutter/material.dart';

final dbzTheme = ThemeData(
  colorScheme: ThemeData().colorScheme.copyWith(
        brightness: Brightness.light,
        background: Colors.orange.shade50,
        primary: Colors.red,
        secondary: const Color.fromRGBO(255, 235, 59, 1),
        tertiary: Colors.red,
      ),
  fontFamily: 'DBZ',
  useMaterial3: true,
);
