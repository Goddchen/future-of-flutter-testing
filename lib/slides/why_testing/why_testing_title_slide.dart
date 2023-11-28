import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class WhyTestingTitleSlide extends FlutterDeckSlideWidget {
  const WhyTestingTitleSlide()
      : super(
          configuration:
              const FlutterDeckSlideConfiguration(route: '/why-testing'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) =>
      FlutterDeckSlide.bigFact(title: 'Why testing?');
}
