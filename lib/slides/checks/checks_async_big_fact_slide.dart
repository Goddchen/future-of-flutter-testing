import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ChecksAsyncBigFactSlide extends FlutterDeckSlideWidget {
  const ChecksAsyncBigFactSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/async-big-fact',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.bigFact(
        title: 'Asynchronous expectations',
        subtitle: '''checks provides ways to check for Futures and Streams''',
      );
}
