import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ChecksAdvancedSlide extends FlutterDeckSlideWidget {
  const ChecksAdvancedSlide()
      : super(
          configuration:
              const FlutterDeckSlideConfiguration(route: '/checks/advanced'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) =>
      FlutterDeckSlide.bigFact(title: 'Advanced checks features');
}
