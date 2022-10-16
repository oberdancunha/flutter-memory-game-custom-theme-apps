import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';

import '../domain/theme/theme.dart';

class ThemeStore extends StreamStore<Exception, ThemeCard> {
  ThemeStore() : super(ThemeCard.empty());

  void getTheme(ThemeCard themeCard) {
    setLoading(true);
    update(themeCard);
    setLoading(false);
  }
}
