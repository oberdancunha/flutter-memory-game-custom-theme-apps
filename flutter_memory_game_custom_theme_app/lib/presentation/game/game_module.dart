import 'package:flutter/material.dart';
import 'package:flutter_memory_game_custom_theme_core/configuration/core_configuration_binding.dart';
import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';
import 'package:flutter_memory_game_custom_theme_design_system/domain/theme/theme.dart';

import 'game_page.dart';

class GameModule extends Module {
  @override
  final List<Bind> binds = [
    ...coreConfigurationBinding(),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => GamePage(
        key: ObjectKey(DateTime.now().microsecondsSinceEpoch.toString()),
        // ignore: avoid_dynamic_calls
        theme: args.data[0] as ThemeCard,
      ),
    ),
  ];
}
