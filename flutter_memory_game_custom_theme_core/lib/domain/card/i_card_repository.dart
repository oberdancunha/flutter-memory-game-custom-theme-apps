import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';

import 'card.dart';

abstract class ICardRepository {
  KtList<Card> initGame();
  KtList<Card> revealCard({
    required KtList<Card> cards,
    required int cardId,
  });
  KtList<Card> hideCard({
    required KtList<Card> cards,
    required int cardId,
  });
  KtList<Card> compareCardsRevealed({
    required KtList<Card> cards,
    required int firstCardId,
    required int secondCardId,
  });
}
