import 'package:flutter_memory_game_custom_theme_core/infrastructure/card/card_data_source.dart';
import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';

import '../../../../domain/theme/theme.dart';

part 'carousel_slider_model.freezed.dart';

@freezed
class CarouselSliderModel with _$CarouselSliderModel {
  const CarouselSliderModel._();

  const factory CarouselSliderModel({
    required ThemeCard theme,
    required CardDataSource cardDataSource,
  }) = _CarouselSliderModel;
}
