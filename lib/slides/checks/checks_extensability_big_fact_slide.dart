import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ChecksExtensabilityBigFactSlide extends FlutterDeckSlideWidget {
  const ChecksExtensabilityBigFactSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/extensability-big-fact',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.bigFact(
        title: 'Extensability',
        subtitle:
            '''It is super easy to extend the checks provided by the package with your own custom checks.''',
      );
}
