import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SpecPackageExampleSlide extends FlutterDeckSlideWidget {
  const SpecPackageExampleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(
              title: 'spec - example',
            ),
            route: '/spec/package/example',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.blank(
        builder: (_) => const Center(
          child: FlutterDeckCodeHighlight(
            code: '''
test('dart test example', () async {
  int value = 42;

  // Without spec - not type safe
  expect(value, equals(42));
  await expectLater(Future.value(42), completion(equals(42)));

  // With spec - type safe
  expect(value).toEqual(42);
  await expect(Future.value(42)).completion.toEqual(42);
});''',
          ),
        ),
      );
}
