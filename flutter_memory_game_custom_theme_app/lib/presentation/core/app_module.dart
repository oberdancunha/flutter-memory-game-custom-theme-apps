import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';
import 'package:flutter_memory_game_custom_theme_design_system/configuration/theme_configuration_binding.dart';
import 'package:flutter_memory_game_custom_theme_design_system/presentation/design_system_body.dart';

import '../home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    ...themeConfigurationBinding(),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, __) => const DesignSystemBody(path: '/home/'),
      children: [
        ModuleRoute(
          '/home/',
          module: HomeModule(),
        ),
      ],
    ),
  ];
}
