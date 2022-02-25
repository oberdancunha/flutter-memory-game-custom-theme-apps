import 'package:flutter/material.dart';
import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';

class DesignSystemBody extends StatefulWidget {
  final String path;

  const DesignSystemBody({
    required this.path,
    Key? key,
  }) : super(key: key);

  @override
  State<DesignSystemBody> createState() => _DesignSystemBodyState();
}

class _DesignSystemBodyState extends State<DesignSystemBody> {
  @override
  void initState() {
    super.initState();
    Modular.to.navigate(widget.path);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: const SafeArea(
          child: RouterOutlet(),
        ),
      );
}
