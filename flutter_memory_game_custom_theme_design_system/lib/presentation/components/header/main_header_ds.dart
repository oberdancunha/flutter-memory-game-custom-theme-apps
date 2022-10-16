import 'package:flutter/material.dart';
import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';

import '../../../application/theme_store.dart';
import '../../../domain/theme/theme.dart';
import '../../../utils/screen_util_ds.dart';

class MainHeaderDS extends StatelessWidget {
  const MainHeaderDS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ScopedBuilder<ThemeStore, Exception, ThemeCard>(
        store: Modular.get<ThemeStore>(),
        onState: (_, state) => SizedBox(
          height: getHeight(150).toDouble(),
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: Theme.of(context).colorScheme.brightness == Brightness.light ? 0.2 : 0.7,
                child: Image.asset(
                  state.backgroundImageTitle,
                  fit: BoxFit.cover,
                  height: getImageSize(130).toDouble(),
                ),
              ),
              Text(
                'Jogo da memória',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontSize: getFontSize(50).toDouble(),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
}
