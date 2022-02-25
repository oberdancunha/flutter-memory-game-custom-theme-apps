import 'package:flutter/material.dart';
import 'package:flutter_memory_game_custom_theme_design_system/utils/screen_util_ds.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/welcome/welcome.png',
            ),
          ),
        ),
        child: Center(
          child: Text(
            'Escolha um tema',
            style: TextStyle(
              fontSize: getFontSize(40).toDouble(),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
}
