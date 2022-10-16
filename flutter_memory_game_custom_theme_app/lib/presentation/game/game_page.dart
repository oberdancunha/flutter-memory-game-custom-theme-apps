import 'package:flutter/material.dart';
import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';
import 'package:flutter_memory_game_custom_theme_design_system/application/theme_store.dart';
import 'package:flutter_memory_game_custom_theme_design_system/domain/theme/theme.dart';

import 'widgets/game_widget.dart';

class GamePage extends StatefulWidget {
  final ThemeCard theme;

  const GamePage({
    required this.theme,
    Key? key,
  }) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ThemeStore>().getTheme(widget.theme);
    });
  }

  @override
  Widget build(BuildContext context) => const GameWidget();
}
