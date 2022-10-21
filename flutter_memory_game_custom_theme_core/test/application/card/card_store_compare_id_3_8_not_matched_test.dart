import 'package:flutter_memory_game_custom_theme_core/application/card/card_state.dart';
import 'package:flutter_memory_game_custom_theme_core/application/card/card_store.dart';
import 'package:flutter_memory_game_custom_theme_core/domain/card/card.dart';
import 'package:flutter_memory_game_custom_theme_core/domain/card/i_card_repository.dart';
import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:triple_test/triple_test.dart';

import '../../mock_data/kids_activities_data_mocked.dart';

class MockCardRepository extends Mock implements ICardRepository {}

void main() {
  late MockCardRepository mockCardRepository;
  late CardStore cardStore;
  late KtList<Card> initCardsMocked;
  late int secondCardIdToReveal;

  setUpAll(() {
    mockCardRepository = MockCardRepository();
    cardStore = CardStore(cardRepository: mockCardRepository);
    secondCardIdToReveal = 8;
    initCardsMocked = mockKidsActivitiesInitGame();
    registerFallbackValue(initCardsMocked);
  });

  storeTest<CardStore>(
    'Should cards 3 and 8 has not matched (cards should return to initial state)',
    build: () {
      when(
        () => mockCardRepository.compareCardsRevealed(
          cards: any(named: 'cards'),
          firstCardId: any(named: 'firstCardId'),
          secondCardId: any(named: 'secondCardId'),
        ),
      ).thenReturn(initCardsMocked);

      return cardStore;
    },
    act: (store) => store.compareCardsRevealed(secondCardIdToReveal),
    verify: (_) => verify(
      () => mockCardRepository.compareCardsRevealed(
        cards: any(named: 'cards'),
        firstCardId: any(named: 'firstCardId'),
        secondCardId: any(named: 'secondCardId'),
      ),
    ).called(1),
    expect: () => [
      const CardState(
        cards: KtList.empty(),
        cardRevealed: 0,
        lockRevealCard: false,
      ),
      tripleLoading,
      CardState(
        cards: initCardsMocked,
        cardRevealed: 0,
        lockRevealCard: false,
      ),
    ],
  );
}
