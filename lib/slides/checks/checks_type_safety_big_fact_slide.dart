import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ChecksTypeSafetyBigFactSlide extends FlutterDeckSlideWidget {
  const ChecksTypeSafetyBigFactSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/type-safety-big-fact',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.bigFact(
        title: 'Type safety',
        subtitle:
            '''The checks package has the advantage of being type aware\nand therefore can warn of errors in the tests at compile time\ninstead of throwing failed expects at you at runtime.''',
      );
}
