import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:future_of_flutter_testing/widgets/bullet_list.dart'
    as local_bullet_list;

class ChecksExtensabilitySlide extends FlutterDeckSlideWidget {
  const ChecksExtensabilitySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header:
                FlutterDeckHeaderConfiguration(title: 'checks - extensability'),
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
        rightBuilder: (_) => local_bullet_list.FlutterDeckBulletList(
          items: const <String>[
            'Create an extension on Subject<YourType>',
            '''Use the Context (don`t confuse with BuildContext) methods: expect, expectAsync, expectUnawaited, nest, nestAsync''',
          ],
        ),
      );
}
