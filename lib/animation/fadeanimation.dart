import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AniProps { opacity, translateY }

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  const FadeAnimation({super.key, required this.delay, required this.child});

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..scene(
        begin: Duration.zero,
        duration: Duration(milliseconds: 500),
      ).tween(AniProps.opacity, Tween(begin: 0.0, end: 1.0))
      ..scene(
        begin: Duration.zero,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeOut,
      ).tween(AniProps.translateY, Tween(begin: -30.0, end: 0.0));

    return PlayAnimationBuilder<Movie>(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, value, child) {
        return Opacity(
          opacity: value.get(AniProps.opacity),
          child: Transform.translate(
            offset: Offset(0, value.get(AniProps.translateY)),
            child: child,
          ),
        );
      },
    );
  }
}
