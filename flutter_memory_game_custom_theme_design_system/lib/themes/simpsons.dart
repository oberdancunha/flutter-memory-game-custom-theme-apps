import 'package:flutter/material.dart';

final simpsonsTheme = ThemeData(
  colorScheme: ThemeData().colorScheme.copyWith(
        brightness: Brightness.light,
        background: Colors.white,
        primary: Colors.orange.shade600,
        secondary: Colors.white,
        tertiary: Colors.orange.shade600,
      ),
  fontFamily: 'Simpsons',
  useMaterial3: true,
);
