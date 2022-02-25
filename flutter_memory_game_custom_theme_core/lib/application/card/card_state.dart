import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';

import '../../domain/card/card.dart';

part 'card_state.freezed.dart';

@freezed
abstract class CardState with _$CardState {
  const factory CardState({
    required KtList<Card> cards,
    required int cardRevealed,
    bool? lockRevealCard,
  }) = _CardState;

  factory CardState.initial() => const CardState(
        cards: KtList.empty(),
        cardRevealed: 0,
        lockRevealCard: false,
      );
}
