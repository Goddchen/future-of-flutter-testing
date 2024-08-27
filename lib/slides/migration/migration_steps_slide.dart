import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:future_of_flutter_testing/widgets/bullet_list.dart'
    as local_bullet_list;

class MigrationStepsSlide extends FlutterDeckSlideWidget {
  const MigrationStepsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/migration-steps',
            steps: 6,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.blank(
        builder: (_) => Center(
          child: Padding(
            padding: const EdgeInsets.all(96),
            child: local_bullet_list.FlutterDeckBulletList(
              items: const <String>[
                'Add dependency to checks in pubspec.yaml',
                'Replace package:test/test.dart imports with package:test/scaffolding.dart',
                'Add import to package:checks/checks.dart',
                'To also use the expect, add import to package:test/expect.dart',
                '''Or do not add the expect import to surface errors that need to be migrated''',
                'Migrate test cases',
              ],
              useSteps: true,
            ),
          ),
        ),
      );
}
