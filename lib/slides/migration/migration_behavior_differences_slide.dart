import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MigrationBehaviorDifferencesSlide extends FlutterDeckSlideWidget {
  const MigrationBehaviorDifferencesSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/migration-behavior-differences',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.blank(
        builder: (_) => FlutterDeckBulletList(
          items: const <String>[
            '''equals matcher performed a deep equals on iterables. Now you need to call deepEquals.''',
            'Streams must now be wrapped in StreamQueue',
          ],
        ),
      );
}
