import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MatchingExampleSlide extends FlutterDeckSlideWidget {
  const MatchingExampleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/matching/example',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.blank(
        builder: (_) => const Center(
          child: FlutterDeckCodeHighlight(
            code: '''
            test('.trim() removes surrounding whitespace', () {
              var string = '  foo ';
              expect(string.trim(), equals('foo'));
            });''',
          ),
        ),
      );
}
