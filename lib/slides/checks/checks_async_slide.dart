import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ChecksAsyncSlide extends FlutterDeckSlideWidget {
  const ChecksAsyncSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/async',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.split(
        leftBuilder: (_) => const Center(
          child: FlutterDeckCodeHighlight(
            code: '''
await check(someFuture).completes((r) => r.isGreaterThan(0));

await check(someStream).withQueue.inOrder([
  (s) => s.emits((e) => e.equals(1)),
  (s) => s.emits((e) => e.equals(2)),
  (s) => s.emits((e) => e.equals(3)),
  (s) => s.isDone(),
]);

var someQueue = StreamQueue(someOtherStream);
await check(someQueue).emits((e) => e.equals(1));
// do something
await check(someQueue).emits((e) => e.equals(2));
// do something''',
          ),
        ),
        rightBuilder: (_) => FlutterDeckBulletList(
          items: const <String>[
            'Checking Futures provides: completes, doesNotComplete, throws',
            '''Checking Streams provides: emits, emitsError, emitThrough, inOrder, anyOf, neverEmits, mayEmit, mayEmitMultiple, isDone, withQueue''',
            'Those return a Future that should be awaited in the test',
            '''Streams need to be wrapped in a StreamQueue''',
            'If you only need to check once, use withQueue utility',
            'If you need to check multiple times, wrap in a StreamQueue',
          ],
        ),
      );
}
