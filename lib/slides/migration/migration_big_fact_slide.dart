import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MigrationBigFactSlide extends FlutterDeckSlideWidget {
  const MigrationBigFactSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/migration-big-fact',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.bigFact(
        title: 'Migration',
        subtitle:
            '''Migration from matcher to checks is easy and can be done incrementally''',
      );
}
