import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ChecksTypeSafetySlide extends FlutterDeckSlideWidget {
  const ChecksTypeSafetySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/type-safety',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.split(
        leftBuilder: (_) => const Center(
          child: FlutterDeckCodeHighlight(
            code: '''
// with matcher this will compile, but fail at runtime
// Expected: [1]
//   Actual: 'a string'
//    Which: is not Iterable
expect('a string', equals(<int>[1]));

// with checks this won't compile
// because Subject<String> does not provide a deepEquals(...) method
// only Subject<Iterable<T>> does
check('a string').deepEquals(<int>[1]);
''',
          ),
        ),
        rightBuilder: (_) => FlutterDeckBulletList(
          items: const <String>[
            'matcher is not type aware, it works with Object and dynamic a lot',
            'checks is type aware and therefore type safe',
            '''checks will fail at compile time if you write stuff that does not make sense''',
          ],
        ),
      );
}
