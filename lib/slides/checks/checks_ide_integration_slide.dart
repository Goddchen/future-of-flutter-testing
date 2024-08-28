import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ChecksIdeIntegrationSlide extends FlutterDeckSlideWidget {
  const ChecksIdeIntegrationSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/ide-integration',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.bigFact(
        title: 'IDE integration',
        subtitle:
            '''You will have a way nicer IDE integration,\nsince now your IDE can provide you with type aware auto complete\nand show you compile issues while you write your test''',
      );
}
