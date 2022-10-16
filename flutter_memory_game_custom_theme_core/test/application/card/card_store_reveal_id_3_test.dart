import 'package:flutter_memory_game_custom_theme_core/application/card/card_state.dart';
import 'package:flutter_memory_game_custom_theme_core/application/card/card_store.dart';
import 'package:flutter_memory_game_custom_theme_core/domain/card/card.dart';
import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:triple_test/triple_test.dart';

import '../../mock_data/kids_activities_data_id_3_reveal_mocked.dart';
import '../../mock_data/kids_activities_data_mocked.dart';

class MockCardStore extends MockStore<Exception, CardState> implements CardStore {}

void main() {
  late MockCardStore mockCardStore;
  late KtList<Card> initCardsMocked;
  late KtList<Card> cardsId3RevealMocked;
  late int cardIdToReveal;

  setUpAll(() {
    mockCardStore = MockCardStore();
    cardIdToReveal = 3;
    initCardsMocked = mockKidsActivitiesInitGame();
    cardsId3RevealMocked = mockKidsActivitiesId3Reveal();
    setUpInitialState(
      mockCardStore,
      initCardsMocked,
      cardsId3RevealMocked,
      cardIdToReveal,
    );
  });

  storeTest<CardStore>(
    'Should check if only card with id 3 is revealed',
    build: () => mockCardStore,
    act: (store) => store.revealCard(cardIdToReveal),
    expect: () => [
      CardState(
        cards: initCardsMocked,
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

void setUpInitialState(
  MockCardStore mockCardStore,
  KtList<Card> initCardsMocked,
  KtList<Card> cardsId3RevealMocked,
  int cardIdToReveal,
) {
  whenObserve<Exception, CardState>(
    mockCardStore,
    input: () => mockCardStore.revealCard(cardIdToReveal),
    initialState: CardState(
      cards: initCardsMocked,
      cardRevealed: 0,
      lockRevealCard: false,
    ),
    triples: [
      Triple(
        isLoading: true,
        event: TripleEvent.loading,
        state: CardState(
          cards: initCardsMocked,
          cardRevealed: 0,
          lockRevealCard: false,
        ),
      ),
      Triple(
        state: CardState(
          cards: cardsId3RevealMocked,
          cardRevealed: cardIdToReveal,
          lockRevealCard: false,
        ),
      ),
    ],
  );
}
