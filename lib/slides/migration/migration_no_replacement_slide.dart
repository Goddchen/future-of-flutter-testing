import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MigrationNoReplacementSlide extends FlutterDeckSlideWidget {
  const MigrationNoReplacementSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/migration-no-replacement',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.blank(
        builder: (_) => FlutterDeckBulletList(
          items: const <String>[
            'No specific type checks (isArgumentError) -> use isA<T> instead',
            'anything -> when a condition should accept any value, pass (_) {}',
            '''Specific numeric comparison (isNegative, isPositive, ...) -> Use isLessThan, isGreaterThan, ...''',
            '''Range comparisons (inClosedOpenRange, ...) -> Use cascades to chain checks for both ends''',
            'containsOnce -> no replacement yet',
            'emitsInAnyOrder -> no replacement yet',
            'expectAsync and expectAsyncUntil -> keep using those for now',
            'isIn -> no replacement yet',
            'orderedEquals -> use deepEquals',
            'prints -> no replacement yet',
            'predicate -> no replacement yet',
          ],
        ),
      );
}
