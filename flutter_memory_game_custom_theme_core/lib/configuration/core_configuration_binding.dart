import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';

import '../application/card/card_store.dart';
import '../domain/card/i_card_repository.dart';
import '../infrastructure/card/card_data_source.dart';
import '../infrastructure/card/card_repository.dart';

List<Bind> coreConfigurationBinding() => [
      // ignore: avoid_dynamic_calls
      Bind.lazySingleton<CardDataSource>((i) => i.args.data[1] as CardDataSource),
      Bind.lazySingleton<ICardRepository>((i) => CardRepository(cardDataSource: i())),
      Bind.lazySingleton((i) => CardStore(cardRepository: i())),
    ];

void coreConfigurationDispose() {
  Modular
    ..dispose<CardDataSource>()
    ..dispose<CardRepository>()
    ..dispose<CardStore>();
}
