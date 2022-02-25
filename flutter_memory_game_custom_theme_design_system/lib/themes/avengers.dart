import 'package:flutter/material.dart';

final avengersTheme = ThemeData(
  colorScheme: ThemeData().colorScheme.copyWith(
        brightness: Brightness.light,
        background: Colors.purple.shade50,
        primary: Colors.teal.shade100,
        secondary: Colors.red.shade700,
        tertiary: Colors.red.shade700,
      ),
  fontFamily: 'Avengeance',
  useMaterial3: true,
);
