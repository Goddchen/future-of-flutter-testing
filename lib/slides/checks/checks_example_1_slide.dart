import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ChecksExample1Slide extends FlutterDeckSlideWidget {
  const ChecksExample1Slide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checks/example-1',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.split(
        leftBuilder: (BuildContext context) => Column(
          children: <Widget>[
            Text(
              'matcher',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const Expanded(
              child: Center(
                child: FlutterDeckCodeHighlight(
                  code: '''
void main() {
  test('sample test', () {
    // test code here
    ...

    expect(actual, equals(expected));
    expect(someList, isNotEmpty());
    expect(someObject, isA<Map>());
    expect(someString, startsWith('a'));
    expect(someString, endsWith('z'));
    expect(someString, contains('lmno'));
  });
}''',
                ),
              ),
            ),
          ],
        ),
        rightBuilder: (BuildContext context) => Column(
          children: <Widget>[
            Text(
              'checks',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const Expanded(
              child: Center(
                child: FlutterDeckCodeHighlight(
                  code: '''
void main() {
  test('sample test', () {
    // test code here
    ...

    check(actual).equals(expected);
    check(someList).isNotEmpty();
    check(someObject).isA<Map>();
    check(someString)
      ..startsWith('a')
      ..endsWith('z')
      ..contains('lmno');
  });
}''',
                ),
              ),
            ),
          ],
        ),
      );
}
