import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MigrationUseNowSlide extends FlutterDeckSlideWidget {
  const MigrationUseNowSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/migration-use-now',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.bigFact(
        title: 'Should I start using checks right away?',
        subtitle: 'If you dare.\n'
            'package:checks is still in preview.\n'
            'Minor or major changes will happend during the preview period.\n'
            'Once it is stable, yes!',
        subtitleMaxLines: 4,
      );
}
