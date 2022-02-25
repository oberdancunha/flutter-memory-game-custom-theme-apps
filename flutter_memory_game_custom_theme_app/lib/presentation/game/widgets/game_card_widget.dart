import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_memory_game_custom_theme_core/application/card/card_store.dart';
import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';
import 'package:flutter_memory_game_custom_theme_design_system/application/theme_store.dart';
import 'package:flutter_memory_game_custom_theme_design_system/utils/screen_util_ds.dart';

class GameCardWidget extends StatefulWidget {
  final int id;
  final String name;
  final String image;
  final bool isMatched;

  const GameCardWidget({
    required this.id,
    required this.name,
    required this.image,
    required this.isMatched,
    Key? key,
  }) : super(key: key);

  @override
  _GameCardWidgetState createState() => _GameCardWidgetState();
}

class _GameCardWidgetState extends State<GameCardWidget> {
  late bool _revealedCard;

  @override
  void initState() {
    super.initState();
    _revealedCard = false;
  }

  @override
  GestureDetector build(BuildContext context) {
    final cardStore = context.read<CardStore>();
    final shouldLetCardRevealed = widget.isMatched || _revealedCard;
    final letsRevealCardInCurrentPlay = cardStore.state.cardRevealed == widget.id || _revealedCard;
    final isSameCardTappedMoreThanOnce = widget.id == cardStore.state.cardRevealed;

    return GestureDetector(
      onTap: () {
        if (!cardStore.state.lockRevealCard! &&
            !widget.isMatched &&
            !isSameCardTappedMoreThanOnce) {
          if (cardStore.state.cardRevealed > 0) {
            _revealCard();
            _waitToCardsCompare(cardStore);
            cardStore.lockCardReveal();
          } else {
            cardStore.revealCard(widget.id);
          }
        }
      },
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 800),
        transitionBuilder: (widget, animation) => _revealedCardTransition(
          widget,
          animation,
          letsRevealCardInCurrentPlay,
        ),
        switchInCurve: Curves.easeInBack,
        switchOutCurve: Curves.easeInBack.flipped,
        child: Container(
          key: ValueKey(letsRevealCardInCurrentPlay),
          width: getWidth(MediaQuery.of(context).size.width / 5).toDouble(),
          height: getWidth(MediaQuery.of(context).size.height / 5).toDouble(),
          color: !shouldLetCardRevealed
              ? Theme.of(context).colorScheme.primary
              : letsRevealCardInCurrentPlay
                  ? Colors.amber.shade900
                  : Colors.green.shade700,
          child: shouldLetCardRevealed
              ? Image.asset(
                  widget.image,
                  scale: 0.7,
                  width: getWidth(30).toDouble(),
                )
              : Image.asset(
                  context.read<ThemeStore>().state.backgroundLogo,
                  scale: 0.9,
                ),
        ),
      ),
    );
  }

  void _revealCard() {
    setState(() {
      _revealedCard = true;
    });
  }

  void _hideCard() {
    setState(() {
      _revealedCard = false;
    });
  }

  void _waitToCardsCompare(CardStore cardStore) {
    Future.delayed(const Duration(seconds: 1), () {
      cardStore.compareCardsRevealed(widget.id);
      _hideCard();
      cardStore.unlockCardReveal();
    });
  }

  AnimatedBuilder _revealedCardTransition(
    Widget widget,
    Animation<double> animation,
    bool letsRevealCardInCurrentPlay,
  ) {
    final animationRotate = Tween<double>(
      begin: pi,
      end: 0,
    ).animate(animation);

    return AnimatedBuilder(
      animation: animation,
      builder: (_, __) {
        final isUnder = ValueKey(letsRevealCardInCurrentPlay) == widget.key;
        final tilt = _calculateTilt(animation.value, isUnder);
        final radians = isUnder ? min(animationRotate.value, pi / 2) : animationRotate.value;

        return Transform(
          transform: letsRevealCardInCurrentPlay
              ? _revealCardRotate(radians, tilt)
              : _hideOrMatchCardRotate(radians, tilt),
          alignment: Alignment.center,
          child: widget,
        );
      },
      child: widget,
    );
  }

  double _calculateTilt(double animationValue, bool isUnder) {
    var tilt = ((animationValue - 0.5).abs() - 0.5) * 0.003;

    return tilt *= isUnder ? -1.0 : 1.0;
  }

  Matrix4 _revealCardRotate(double radians, double tilt) =>
      Matrix4.rotationY(radians)..setEntry(3, 0, tilt);

  Matrix4 _hideOrMatchCardRotate(double radians, double tilt) =>
      Matrix4.rotationX(radians)..setEntry(3, 1, tilt);
}
