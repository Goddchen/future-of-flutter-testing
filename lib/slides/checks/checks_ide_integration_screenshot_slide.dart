import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:future_of_flutter_testing/gen/assets.gen.dart';

class ChecksIdeIntegrationScreenshotSlide extends FlutterDeckSlideWidget {
  const ChecksIdeIntegrationScreenshotSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/ide-integration-screenshot',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.image(
        imageBuilder: (_) => Assets.autoComplete.image(),
      );
}
