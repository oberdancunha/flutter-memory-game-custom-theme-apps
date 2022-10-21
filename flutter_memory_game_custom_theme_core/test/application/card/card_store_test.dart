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
  late KtList<Card> initCardsMocked;

  setUpAll(() {
    mockCardRepository = MockCardRepository();
    initCardsMocked = mockKidsActivitiesInitGame();
    setUpMockCardRepository(mockCardRepository, initCardsMocked);
  });

  storeTest<CardStore>(
    'Should init game',
    build: () => CardStore(cardRepository: mockCardRepository),
    act: (store) => store.initGame(),
    verify: (_) {
      verify(() => mockCardRepository.initGame()).called(1);
    },
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

void setUpMockCardRepository(MockCardRepository mockCardRepository, KtList<Card> cardsMocked) {
  when(mockCardRepository.initGame).thenReturn(cardsMocked);
}
