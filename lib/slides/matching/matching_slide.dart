import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:future_of_flutter_testing/widgets/bullet_list.dart'
    as local_bullet_list;

class MatchingSlide extends FlutterDeckSlideWidget {
  const MatchingSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: 'Matching'),
            route: '/matching',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.blank(
        builder: (_) => Center(
          child: Padding(
            padding: const EdgeInsets.all(96),
            child: local_bullet_list.FlutterDeckBulletList(
              items: const <String>[
                '''During tests, you want verify that data satisfies certain criteria.''',
                'This is called matching.',
                'The test package provides the expect(...) method for this.',
                '''The matcher package provides matchers used with expect(...).''',
                '''equals(...), contains(...), hasLength(...), greaterThan(...), isA<T>(), ...''',
              ],
            ),
          ),
        ),
      );
}
