import 'package:flutter/material.dart';
import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';

import '../../themes/avengers.dart';
import '../../themes/cdz.dart';
import '../../themes/dbz.dart';
import '../../themes/dc.dart';
import '../../themes/default_theme.dart';
import '../../themes/flinstones.dart';
import '../../themes/simpsons.dart';
import '../../themes/thundercats.dart';
import '../../themes/world_cup_2022.dart';

part 'theme.freezed.dart';

@freezed
class ThemeCard with _$ThemeCard {
  const ThemeCard._();

  factory ThemeCard({
    required String title,
    required String backgroundImageTitle,
    required String backgroundLogo,
    required ThemeData themeData,
    required double backgroundLogoOpacity,
    String? fontFamily,
  }) = _ThemeCard;

  factory ThemeCard.empty() => ThemeCard(
        title: '',
        backgroundImageTitle: 'assets/images/themes/default/default_logo.png',
        backgroundLogo: '',
        themeData: defaultTheme,
        backgroundLogoOpacity: 0.2,
      );

  factory ThemeCard.avengers() => ThemeCard(
        title: 'Vingadores',
        fontFamily: 'Avengeance',
        backgroundImageTitle: 'assets/images/themes/avengers/avengers_background_image.png',
        backgroundLogo: 'assets/images/themes/avengers/avengers_logo.png',
        themeData: avengersTheme,
        backgroundLogoOpacity: 0.2,
      );

  factory ThemeCard.dc() => ThemeCard(
        title: 'DC',
        fontFamily: 'DC',
        backgroundImageTitle: 'assets/images/themes/dc/dc_background_image.png',
        backgroundLogo: 'assets/images/themes/dc/dc_logo.png',
        themeData: dcTheme,
        backgroundLogoOpacity: 0.7,
      );

  factory ThemeCard.cdz() => ThemeCard(
        title: 'CAVALEIROS DO ZODIACO',
        fontFamily: 'CDZ',
        backgroundImageTitle: 'assets/images/themes/cdz/cdz_background_image.png',
        backgroundLogo: 'assets/images/themes/cdz/cdz_logo.png',
        themeData: cdzTheme,
        backgroundLogoOpacity: 0.2,
      );

  factory ThemeCard.dbz() => ThemeCard(
        title: 'Dragon Ball Z',
        fontFamily: 'DBZ',
        backgroundImageTitle: 'assets/images/themes/dbz/dbz_background_image.png',
        backgroundLogo: 'assets/images/themes/dbz/dbz_logo.png',
        themeData: dbzTheme,
        backgroundLogoOpacity: 0.2,
      );

  factory ThemeCard.thundercats() => ThemeCard(
        title: 'Thundercats',
        fontFamily: 'Thundercats',
        backgroundImageTitle: 'assets/images/themes/thundercats/thundercats_logo.png',
        backgroundLogo: 'assets/images/themes/thundercats/thundercats_logo.png',
        themeData: thundercatsTheme,
        backgroundLogoOpacity: 0.7,
      );

  factory ThemeCard.simpsons() => ThemeCard(
        title: 'Simpsons',
        fontFamily: 'Simpsons',
        backgroundImageTitle: 'assets/images/themes/simpsons/simpsons_background_image.png',
        backgroundLogo: 'assets/images/themes/simpsons/simpsons_logo.png',
        themeData: simpsonsTheme,
        backgroundLogoOpacity: 0.2,
      );

  factory ThemeCard.flintstones() => ThemeCard(
        title: 'Flintstones',
        fontFamily: 'Flintfon',
        backgroundImageTitle: 'assets/images/themes/flintstones/flintstones_background_image.png',
        backgroundLogo: 'assets/images/themes/flintstones/flintstones_logo.png',
        themeData: flintstonesTheme,
        backgroundLogoOpacity: 0.2,
      );

  factory ThemeCard.worldCup2022() => ThemeCard(
        title: 'Copa 2022',
        fontFamily: 'Qatar2022Arabic',
        backgroundImageTitle:
            'assets/images/themes/world_cup_2022/world_cup_2022_background_image.png',
        backgroundLogo: 'assets/images/themes/world_cup_2022/world_cup_2022_logo.png',
        themeData: worldCup2022Theme,
        backgroundLogoOpacity: 0.3,
      );
}
