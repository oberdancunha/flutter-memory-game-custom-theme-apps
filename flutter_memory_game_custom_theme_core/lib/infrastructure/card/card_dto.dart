import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';

part 'card_dto.freezed.dart';

@freezed
abstract class CardDto with _$CardDto {
  const CardDto._();

  factory CardDto({
    required String name,
    required String image,
    required int selectedToGame,
  }) = _CardDto;
}
