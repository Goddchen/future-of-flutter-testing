import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MatchingSlide extends FlutterDeckSlideWidget {
  const MatchingSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/matching',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.blank(
        builder: (_) => FlutterDeckBulletList(
          items: const <String>[
            '''During tests, you want verify that data satisfies certain criteria.''',
            'This is called matching.',
            'The test package provides the expect(...) method for this.',
            '''The matcher package provides matchers used with expect(...).''',
            '''equals(...), contains(...), hasLength(...), greaterThan(...), isA<T>(), ...''',
          ],
        ),
      );
}
