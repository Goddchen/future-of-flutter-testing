import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class MigrationMatcherSlide extends FlutterDeckSlideWidget {
  const MigrationMatcherSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/migration/matcher',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.split(
        leftBuilder: (_) => const Center(
          child: FlutterDeckCodeHighlight(
            code: '''
expect(actual, expected);
check(actual).equals(expected);
check(actualCollection).deepEquals(expected);

await expectLater(actual, completes());
await check(actual).completes();

expect(actual, expectation(), reason: 'some explanation');
check(because: 'some explanation', actual).expectation();''',
          ),
        ),
        rightBuilder: (_) => FlutterDeckBulletList(
          items: const <String>[
            'Replace expect(...) and expectLater(...) with check(...) calls',
            'If you used reason, rename it to because',
          ],
        ),
      );
}
