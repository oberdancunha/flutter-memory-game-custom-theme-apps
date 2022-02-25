import 'package:flutter_memory_game_custom_theme_core/data/card/avengers_data_source.dart';
import 'package:flutter_memory_game_custom_theme_core/data/card/cdz_data_source.dart';
import 'package:flutter_memory_game_custom_theme_core/data/card/dbz_data_source.dart';
import 'package:flutter_memory_game_custom_theme_core/data/card/dc_data_source.dart';
import 'package:flutter_memory_game_custom_theme_core/data/card/flintstones_data_source.dart';
import 'package:flutter_memory_game_custom_theme_core/data/card/simpsons_data_source.dart';
import 'package:flutter_memory_game_custom_theme_core/data/card/thundercats_data_source.dart';
import 'package:flutter_memory_game_custom_theme_design_system/domain/theme/theme.dart';
import 'package:flutter_memory_game_custom_theme_design_system/presentation/components/carousel_slider/model/carousel_slider_model.dart';

final cardsThemesOptions = [
  CarouselSliderModel(
    theme: ThemeCard.avengers(),
    cardDataSource: const AvengersDataSource(),
  ),
  CarouselSliderModel(
    theme: ThemeCard.dc(),
    cardDataSource: const DCDataSource(),
  ),
  CarouselSliderModel(
    theme: ThemeCard.cdz(),
    cardDataSource: const CDZDataSource(),
  ),
  CarouselSliderModel(
    theme: ThemeCard.dbz(),
    cardDataSource: const DBZDataSource(),
  ),
  CarouselSliderModel(
    theme: ThemeCard.thundercats(),
    cardDataSource: const ThundercatsDataSource(),
  ),
  CarouselSliderModel(
    theme: ThemeCard.simpsons(),
    cardDataSource: const SimpsonsDataSource(),
  ),
  CarouselSliderModel(
    theme: ThemeCard.flintstones(),
    cardDataSource: const FlintstonesDataSource(),
  ),
];
