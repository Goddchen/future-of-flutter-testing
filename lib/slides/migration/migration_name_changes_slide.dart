import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MigrationNameChangesSlide extends FlutterDeckSlideWidget {
  const MigrationNameChangesSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/migration-name-changes',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.blank(
        builder: (_) => FlutterDeckBulletList(
          items: const <String>[
            'anyElement -> any',
            'everyElement -> every',
            'completion -> completes',
            'containsPair(key, value) -> Subject<Map>[key].equals(value)',
            'hasLength -> length.equals',
            'isNot -> not',
            'pairwiseCompare -> pairwiseComparesTo',
            'same -> identicalTo',
            'stringContainsInOrder -> containsInOrder',
          ],
        ),
      );
}
