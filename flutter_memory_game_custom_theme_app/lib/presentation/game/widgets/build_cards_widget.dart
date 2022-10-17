import 'package:flutter/material.dart' hide Card;
import 'package:flutter_memory_game_custom_theme_core/domain/card/card.dart';
import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';

import 'game_card_widget.dart';

class BuildCardsWidget extends StatelessWidget {
  final KtList<Card> cards;

  const BuildCardsWidget({
    required this.cards,
    super.key,
  });

  @override
  Widget build(BuildContext context) => GridView.count(
        crossAxisCount: 5,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        childAspectRatio: MediaQuery.of(context).size.width > 600 ? 1.2 : 1.0,
        children: List.generate(cards.size, (index) {
          final card = cards.elementAt(index);

          return GameCardWidget(
            id: card.id,
            name: card.name,
            image: card.image,
            isMatched: card.isMatched,
          );
        }),
      );
}
