import 'package:flutter/material.dart';
import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';
import 'package:flutter_memory_game_custom_theme_design_system/presentation/components/carousel_slider/widget/carousel_slider_ds.dart';
import 'package:flutter_memory_game_custom_theme_design_system/presentation/components/header/main_header_ds.dart';
import 'package:flutter_memory_game_custom_theme_design_system/utils/screen_util_ds.dart';

import 'misc/cards_themes_options.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Modular.to.navigate('/home/welcome/');
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const MainHeaderDS(),
          CarouselSliderDS(cardThemes: cardsThemesOptions),
          SizedBox(height: getHeight(20).toDouble()),
          const Expanded(child: RouterOutlet()),
        ],
      );
}
