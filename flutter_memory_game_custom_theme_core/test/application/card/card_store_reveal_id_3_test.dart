import 'package:flutter_memory_game_custom_theme_core/application/card/card_state.dart';
import 'package:flutter_memory_game_custom_theme_core/application/card/card_store.dart';
import 'package:flutter_memory_game_custom_theme_core/domain/card/card.dart';
import 'package:flutter_memory_game_custom_theme_core/domain/card/i_card_repository.dart';
import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:triple_test/triple_test.dart';

import '../../mock_data/kids_activities_data_id_3_reveal_mocked.dart';

class MockCardRepository extends Mock implements ICardRepository {}

class MockCardStore extends MockStore<Exception, CardState> implements CardStore {}

void main() {
  late MockCardRepository mockCardRepository;
  late CardStore cardStore;
  late KtList<Card> cardsId3RevealMocked;
  late int cardIdToReveal;

  setUpAll(() {
    mockCardRepository = MockCardRepository();
    cardStore = CardStore(cardRepository: mockCardRepository);
    cardIdToReveal = 3;
    cardsId3RevealMocked = mockKidsActivitiesId3Reveal();
    registerFallbackValue(cardsId3RevealMocked);
  });

  storeTest<CardStore>(
    'Should check if only card with id 3 is revealed',
    build: () {
      when(
        () => mockCardRepository.revealCard(
          cards: any(named: 'cards'),
          cardId: any(named: 'cardId'),
        ),
      ).thenReturn(cardsId3RevealMocked);

      return cardStore;
    },
    act: (store) => store.revealCard(cardIdToReveal),
    verify: (_) {
      verify(
        () => mockCardRepository.revealCard(
          cards: any(named: 'cards'),
          cardId: any(named: 'cardId'),
        ),
      ).called(1);
    },
    expect: () => [
      const CardState(
        cards: KtList.empty(),
        cardRevealed: 0,
        lockRevealCard: false,
      ),
      tripleLoading,
      CardState(
        cards: cardsId3RevealMocked,
        cardRevealed: cardIdToReveal,
        lockRevealCard: false,
      ),
    ],
  );
}
