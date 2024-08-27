import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ChecksCompositionSlide extends FlutterDeckSlideWidget {
  const ChecksCompositionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/composition',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.split(
        leftBuilder: (_) => const Center(
          child: FlutterDeckCodeHighlight(
            code: '''
check(someString)
  ..startsWith('a')
  ..endsWith('z')
  ..contains('lmno');
  
check(someString)
  ..startsWith('a')
  // A cascade would not be possible on `length`
  ..length.which((l) => l
    ..isGreatherThan(10)
    ..isLessThan(100));
    
extension ComposedChecks on Subject<Iterable> {
  void hasLengthInRange(int min, int max) {
    length
      ..isGreaterThan(min)
      ..isLessThan(max);
  }
}''',
          ),
        ),
        rightBuilder: (_) => FlutterDeckBulletList(
          items: const <String>[
            '''Use the cascade operator to perform multiple checks on the same value''',
            '''Some checks cannot be written as a cascade, use the which(...) utility for those''',
            'Or create a custom check for the composition',
          ],
        ),
      );
}
