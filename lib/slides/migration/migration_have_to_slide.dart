import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MigrationHaveToSlide extends FlutterDeckSlideWidget {
  const MigrationHaveToSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/migration-have-to',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.bigFact(
        title: 'Do I have to migrate at all?',
        subtitle: 'No.\n'
            'At some point package:test will stop exporting matcher.\n'
            'But you can just add a direct dependency to package:matcher.\n',
      );
}
