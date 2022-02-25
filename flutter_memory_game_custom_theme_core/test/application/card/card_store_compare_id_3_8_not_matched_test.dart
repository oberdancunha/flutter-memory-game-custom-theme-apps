import 'dart:ffi';

import 'package:flutter_memory_game_custom_theme_core/application/card/card_state.dart';
import 'package:flutter_memory_game_custom_theme_core/application/card/card_store.dart';
import 'package:flutter_memory_game_custom_theme_core/domain/card/card.dart';
import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:triple_test/triple_test.dart';

import '../../mock_data/kids_activities_data_id_3_reveal_mocked.dart';
import '../../mock_data/kids_activities_data_mocked.dart';

class MockCardStore extends MockStore<Void, CardState> implements CardStore {}

void main() {
  late MockCardStore mockCardStore;
  late KtList<Card> initCardsMocked;
  late KtList<Card> cardsId3RevealMocked;
  late int firstCardIdRevealed;
  late int secondCardIdToReveal;

  setUpAll(() {
    mockCardStore = MockCardStore();
    firstCardIdRevealed = 3;
    secondCardIdToReveal = 8;
    initCardsMocked = mockKidsActivitiesInitGame();
    cardsId3RevealMocked = mockKidsActivitiesId3Reveal();
    setUpInitialState(
      mockCardStore,
      cardsId3RevealMocked,
      initCardsMocked,
      secondCardIdToReveal,
    );
  });

  storeTest<CardStore>(
    'Should cards 3 and 8 has not matched (cards should return to initial state)',
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
        cards: initCardsMocked,
        cardRevealed: 0,
        lockRevealCard: false,
      ),
    ],
  );
}

void setUpInitialState(
  MockCardStore mockCardStore,
  KtList<Card> cardsId3RevealMocked,
  KtList<Card> initCardsMocked,
  int secondCardIdToReveal,
) {
  whenObserve<Void, CardState>(
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
        isLoading: false,
        event: TripleEvent.state,
        state: CardState(
          cards: initCardsMocked,
          cardRevealed: 0,
          lockRevealCard: false,
        ),
      ),
    ],
  );
}
