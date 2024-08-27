import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ChecksCompositionBigFactSlide extends FlutterDeckSlideWidget {
  const ChecksCompositionBigFactSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/composition-big-fact',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.bigFact(
        title: 'Composition',
        subtitle:
            '''It is super easy to compose checks and perform multiple checks on the same value''',
      );
}
