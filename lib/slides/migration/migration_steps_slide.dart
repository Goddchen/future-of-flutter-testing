import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MigrationStepsSlide extends FlutterDeckSlideWidget {
  const MigrationStepsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/migration-steps',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.blank(
        builder: (_) => FlutterDeckBulletList(
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
      );
}
