import 'package:flutter_memory_game_custom_theme_core/application/card/card_state.dart';
import 'package:flutter_memory_game_custom_theme_core/application/card/card_store.dart';
import 'package:flutter_memory_game_custom_theme_core/domain/card/card.dart';
import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:triple_test/triple_test.dart';

import '../../mock_data/kids_activities_data_id_3_reveal_mocked.dart';
import '../../mock_data/kids_activities_data_ids_3_7_matched.dart';

class MockCardStore extends MockStore<Exception, CardState> implements CardStore {}

void main() {
  late MockCardStore mockCardStore;
  late KtList<Card> cardsId3RevealMocked;
  late KtList<Card> cardsIds3and7MatchedMocked;
  late int firstCardIdRevealed;
  late int secondCardIdToReveal;

  setUpAll(() {
    mockCardStore = MockCardStore();
    firstCardIdRevealed = 3;
    secondCardIdToReveal = 7;
    cardsId3RevealMocked = mockKidsActivitiesId3Reveal();
    cardsIds3and7MatchedMocked = mockKidsActivitiesIds3and7Matched();
    setUpInitialState(
      mockCardStore,
      cardsId3RevealMocked,
      cardsIds3and7MatchedMocked,
      secondCardIdToReveal,
    );
  });

  storeTest<CardStore>(
    'Should cards 3 and 7 has matched',
    build: () => mockCardStore,
    act: (store) => store.compareCardsRevealed(secondCardIdToReveal),
    expect: () => [
      CardState(
        cards: cardsId3RevealMocked,
        cardRevealed: firstCardIdRevealed,
        lockRevealCard: false,
      ),
      tripleLoading,
      CardState(
        cards: cardsIds3and7MatchedMocked,
        cardRevealed: 0,
        lockRevealCard: false,
      ),
    ],
  );
}

void setUpInitialState(
  MockCardStore mockCardStore,
  KtList<Card> cardsId3RevealMocked,
  KtList<Card> cardsIds3and7MatchedMocked,
  int secondCardIdToReveal,
) {
  whenObserve<Exception, CardState>(
    mockCardStore,
    input: () => mockCardStore.compareCardsRevealed(secondCardIdToReveal),
    initialState: CardState(
      cards: cardsId3RevealMocked,
      cardRevealed: 3,
      lockRevealCard: false,
    ),
    triples: [
      Triple(
        isLoading: true,
        event: TripleEvent.loading,
        state: CardState(
          cards: cardsId3RevealMocked,
          cardRevealed: 3,
          lockRevealCard: false,
        ),
      ),
      Triple(
        state: CardState(
          cards: cardsIds3and7MatchedMocked,
          cardRevealed: 0,
          lockRevealCard: false,
        ),
      ),
    ],
  );
}
