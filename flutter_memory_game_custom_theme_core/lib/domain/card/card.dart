import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';

import '../core/entity.dart';

part 'card.freezed.dart';

@freezed
class Card with _$Card implements IEntity {
  const Card._();

  const factory Card({
    required int id,
    required String name,
    required String image,
    required bool isMatched,
  }) = _Card;
}
