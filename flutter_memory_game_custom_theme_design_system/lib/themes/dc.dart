import 'package:flutter/material.dart';

final dcTheme = ThemeData(
  colorScheme: ThemeData().colorScheme.copyWith(
        brightness: Brightness.dark,
        background: Colors.black,
        primary: Colors.blue,
        secondary: Colors.greenAccent,
        tertiary: Colors.greenAccent,
      ),
  fontFamily: 'DC',
  useMaterial3: true,
);
