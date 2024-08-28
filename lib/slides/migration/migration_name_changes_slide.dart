import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:future_of_flutter_testing/widgets/bullet_list.dart'
    as local_bullet_list;

class MigrationNameChangesSlide extends FlutterDeckSlideWidget {
  const MigrationNameChangesSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: 'Naming changes'),
            route: '/checks/migration-name-changes',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.blank(
        builder: (_) => Center(
          child: Padding(
            padding: const EdgeInsets.all(96),
            child: local_bullet_list.FlutterDeckBulletList(
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
          ),
        ),
      );
}
