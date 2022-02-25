import 'package:flutter/material.dart';

final thundercatsTheme = ThemeData(
  colorScheme: ThemeData().colorScheme.copyWith(
        brightness: Brightness.dark,
        background: Colors.black,
        primary: Colors.white,
        secondary: const Color(0xFFE90023),
        tertiary: Colors.white,
      ),
  fontFamily: 'Thundercats',
  useMaterial3: true,
);
