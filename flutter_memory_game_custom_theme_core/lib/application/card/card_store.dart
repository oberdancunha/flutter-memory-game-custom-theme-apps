import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';

import '../../domain/card/i_card_repository.dart';
import 'card_state.dart';

class CardStore extends StreamStore<Exception, CardState> {
  final ICardRepository cardRepository;

  CardStore({
    required this.cardRepository,
  }) : super(CardState.initial());

  void initGame() {
    setLoading(true);
    final cards = cardRepository.initGame();
    update(
      state.copyWith(cards: cards),
    );
    setLoading(false);
  }

  void revealCard(int cardId) {
    setLoading(true);
    final cards = cardRepository.revealCard(
      cards: state.cards,
      cardId: cardId,
    );
    update(
      state.copyWith(
        cards: cards,
        cardRevealed: cardId,
      ),
    );
    setLoading(false);
  }

  void compareCardsRevealed(int cardId) {
    setLoading(true);
    final cards = cardRepository.compareCardsRevealed(
      cards: state.cards,
      firstCardId: state.cardRevealed,
      secondCardId: cardId,
    );
    update(
      state.copyWith(
        cards: cards,
        cardRevealed: 0,
      ),
    );
    setLoading(false);
  }

  void lockCardReveal() {
    update(
      state.copyWith(
        lockRevealCard: true,
      ),
    );
  }

  void unlockCardReveal() {
    update(
      state.copyWith(
        lockRevealCard: false,
      ),
    );
  }
}
