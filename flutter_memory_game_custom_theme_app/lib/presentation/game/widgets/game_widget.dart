import 'dart:ffi';

import 'package:flutter/material.dart' hide Card;
import 'package:flutter_memory_game_custom_theme_core/application/card/card_state.dart';
import 'package:flutter_memory_game_custom_theme_core/application/card/card_store.dart';
import 'package:flutter_memory_game_custom_theme_core/domain/card/card.dart';
import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';

import 'game_card_widget.dart';

class GameWidget extends StatefulWidget {
  const GameWidget({Key? key}) : super(key: key);

  @override
  State<GameWidget> createState() => _GameWidgetState();
}

class _GameWidgetState extends State<GameWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.watch<CardStore>().initGame();
    });
  }

  @override
  Widget build(BuildContext context) => ScopedBuilder<CardStore, Void, CardState>(
        onState: (_, state) => _buildCards(
          context: context,
          cards: state.cards,
        ),
      );

  GridView _buildCards({required BuildContext context, required KtList<Card> cards}) =>
      GridView.count(
        crossAxisCount: 5,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        childAspectRatio: MediaQuery.of(context).size.width > 600 ? 1.2 : 1.0,
        children: List.generate(
          cards.size,
          (index) => GameCardWidget(
            id: cards.elementAt(index).id,
            name: cards.elementAt(index).name,
            image: cards.elementAt(index).image,
            isMatched: cards.elementAt(index).isMatched,
          ),
        ),
      );
}
