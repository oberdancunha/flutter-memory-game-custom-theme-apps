import 'package:flutter/material.dart' hide Card;
import 'package:flutter_memory_game_custom_theme_core/application/card/card_state.dart';
import 'package:flutter_memory_game_custom_theme_core/application/card/card_store.dart';
import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';

import 'build_cards_widget.dart';

class GameWidget extends StatefulWidget {
  const GameWidget({Key? key}) : super(key: key);

  @override
  State<GameWidget> createState() => _GameWidgetState();
}

class _GameWidgetState extends State<GameWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.watch<CardStore>().initGame();
    });
  }

  @override
  Widget build(BuildContext context) => ScopedBuilder<CardStore, Exception, CardState>(
        store: Modular.get<CardStore>(),
        onState: (_, state) => BuildCardsWidget(
          cards: state.cards,
        ),
      );
}
