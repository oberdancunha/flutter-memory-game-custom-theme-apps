import 'package:flutter/material.dart';
import 'package:flutter_memory_game_custom_theme_core/configuration/core_configuration_binding.dart';
import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';

import '../../../../utils/screen_util_ds.dart';
import '../model/carousel_slider_model.dart';

class CarouselSliderDS extends StatefulWidget {
  final List<CarouselSliderModel> cardThemes;

  const CarouselSliderDS({
    required this.cardThemes,
    Key? key,
  }) : super(key: key);

  @override
  State<CarouselSliderDS> createState() => _CarouselSliderDSState();
}

class _CarouselSliderDSState extends State<CarouselSliderDS> {
  late CarouselController _carouselController;
  late bool _destroyBinds;

  @override
  void initState() {
    super.initState();
    _carouselController = CarouselController();
    _destroyBinds = false;
  }

  void _callCardTheme(int index) {
    if (_destroyBinds) {
      coreConfigurationDispose();
    } else {
      _destroyBinds = true;
    }
    Modular.to.pushNamedAndRemoveUntil(
      '/home/game/',
      (p0) => false,
      arguments: [
        widget.cardThemes.elementAt(index).theme,
        widget.cardThemes.elementAt(index).cardDataSource,
      ],
    );
    _carouselController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) => CarouselSlider.builder(
        carouselController: _carouselController,
        itemCount: widget.cardThemes.length,
        itemBuilder: (_, index, __) {
          final cardTheme = widget.cardThemes.elementAt(index);

          return GestureDetector(
            child: Container(
              width: getImageSize(120).toDouble(),
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    cardTheme.theme.backgroundLogo,
                    fit: BoxFit.cover,
                    width: getImageSize(100).toDouble(),
                  ),
                  Text(
                    cardTheme.theme.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: cardTheme.theme.fontFamily,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            onTap: () {
              _callCardTheme(index);
            },
          );
        },
        options: CarouselOptions(
          height: getHeight(120).toDouble(),
          viewportFraction: 0.25,
          onPageChanged: (index, __) {
            _callCardTheme(index);
          },
        ),
      );
}
