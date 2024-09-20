import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SpecIntroSlide extends FlutterDeckSlideWidget {
  const SpecIntroSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/spec',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.bigFact(
        title: 'spec',
        subtitle: 'A streamlined testing framework for Dart & Flutter',
      );
}
