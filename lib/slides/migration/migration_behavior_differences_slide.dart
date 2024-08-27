import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:future_of_flutter_testing/widgets/bullet_list.dart'
    as local_bullet_list;

class MigrationBehaviorDifferencesSlide extends FlutterDeckSlideWidget {
  const MigrationBehaviorDifferencesSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/migration-behavior-differences',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.blank(
        builder: (_) => Center(
          child: Padding(
            padding: const EdgeInsets.all(96),
            child: local_bullet_list.FlutterDeckBulletList(
              items: const <String>[
                '''equals matcher performed a deep equals on iterables. Now you need to call deepEquals.''',
                'Streams must now be wrapped in StreamQueue',
              ],
            ),
          ),
        ),
      );
}
