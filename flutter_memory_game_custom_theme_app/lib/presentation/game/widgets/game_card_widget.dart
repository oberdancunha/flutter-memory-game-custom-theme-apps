import 'package:flutter/material.dart';
import 'package:flutter_memory_game_custom_theme_core/application/card/card_store.dart';
import 'package:flutter_memory_game_custom_theme_dependency_module/flutter_memory_game_custom_theme_dependency_module.dart';
import 'package:flutter_memory_game_custom_theme_design_system/application/theme_store.dart';
import 'package:flutter_memory_game_custom_theme_design_system/utils/screen_util_ds.dart';

import 'revealed_card_transition_widget.dart';

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
        transitionBuilder: (widget, animation) => RevealedCardTransitionWidget(
          widget: widget,
          animation: animation,
          letsRevealCardInCurrentPlay: letsRevealCardInCurrentPlay,
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
}
