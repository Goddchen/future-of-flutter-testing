import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MigrationAllAtOnceSlide extends FlutterDeckSlideWidget {
  const MigrationAllAtOnceSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/migration-all-at-once',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.bigFact(
        title: 'Do I have to migrate all at once?',
        subtitle: 'No.\n'
            '''checks can live alongside matcher and old matcher tests can exist in parallel to new checks tests.\n'''
            'You can even mix expect and check in the same test file.',
      );
}
