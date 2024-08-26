import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ChecksIntroSlide extends FlutterDeckSlideWidget {
  const ChecksIntroSlide()
      : super(
          configuration:
              const FlutterDeckSlideConfiguration(route: '/checks/intro'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.bigFact(
        title: 'checks',
        subtitle: 'A framework for checking values against expectations '
            'and building custom expectations.',
      );
}
