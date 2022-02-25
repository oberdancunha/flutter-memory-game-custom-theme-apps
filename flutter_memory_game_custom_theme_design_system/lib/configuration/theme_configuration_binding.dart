import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';

import '../application/theme_store.dart';

List<Bind> themeConfigurationBinding() => [
      Bind.singleton((_) => ThemeStore()),
    ];
