import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ChecksExtensabilitySlide extends FlutterDeckSlideWidget {
  const ChecksExtensabilitySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/extensability',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.split(
        leftBuilder: (_) => const Center(
          child: FlutterDeckCodeHighlight(
            code: '''
extension CustomChecks on Subject<CustomType> {
  void someExpectation() {
    context.expect(() => ['meets this expectation'], (actual) {
      if (_expectationIsMet(actual)) return null;
      return Rejection(which: ['does not meet this expectation']);
    });
  }
}''',
          ),
        ),
        rightBuilder: (_) => FlutterDeckBulletList(
          items: const <String>[
            'Create an extension on Subject<YourType>',
            '''Use the Context (don`t confuse with BuildContext) methods: expect, expectAsync, expectUnawaited, nest, nestAsync''',
          ],
        ),
      );
}
