import 'dart:math';

import 'package:flutter/material.dart';

class RevealedCardTransitionWidget extends StatelessWidget {
  final Widget widget;
  final Animation<double> animation;
  final bool letsRevealCardInCurrentPlay;

  const RevealedCardTransitionWidget({
    required this.widget,
    required this.animation,
    required this.letsRevealCardInCurrentPlay,
    super.key,
  });

  double _calculateTilt(double animationValue, bool isUnder) {
    var tilt = ((animationValue - 0.5).abs() - 0.5) * 0.003;

    return tilt *= isUnder ? -1.0 : 1.0;
  }

  Matrix4 _revealCardRotate(double radians, double tilt) =>
      Matrix4.rotationY(radians)..setEntry(3, 0, tilt);

  Matrix4 _hideOrMatchCardRotate(double radians, double tilt) =>
      Matrix4.rotationX(radians)..setEntry(3, 1, tilt);

  @override
  Widget build(BuildContext context) {
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
}
