import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';

import '../application/theme_store.dart';
import '../domain/theme/theme.dart';

class DesignSystemPage extends StatelessWidget {
  const DesignSystemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        designSize: const Size(360, 640),
        minTextAdapt: true,
        builder: () => ScopedBuilder<ThemeStore, Void, ThemeCard>(
          onState: (_, theme) {
            if (Platform.isIOS) {
              SystemChrome.setSystemUIOverlayStyle(
                SystemUiOverlayStyle(
                  statusBarBrightness: theme.themeData.colorScheme.brightness,
                  statusBarIconBrightness: theme.themeData.colorScheme.brightness,
                ),
              );
            }

            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'Jogo da memória',
              routeInformationParser: Modular.routeInformationParser,
              routerDelegate: Modular.routerDelegate,
              theme: theme.themeData,
            );
          },
        ),
      );
}
