import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';

import '../game/game_module.dart';
import '../welcome/welcome_page.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, __) => const HomePage(),
      children: [
        ChildRoute('/welcome/', child: (_, __) => const WelcomePage()),
        ModuleRoute(
          '/game/',
          module: GameModule(),
        ),
      ],
    ),
  ];
}
