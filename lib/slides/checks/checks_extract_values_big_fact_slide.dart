import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ChecksExtractValuesBigFactSlide extends FlutterDeckSlideWidget {
  const ChecksExtractValuesBigFactSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/extract-values-big-fact',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.bigFact(
        title: 'Extracting values',
        subtitle: 'checks let you easily extract or derivate values.',
      );
}
