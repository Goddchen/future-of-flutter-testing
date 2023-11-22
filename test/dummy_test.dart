import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_of_flutter_testing/slides/title/title_slide.dart';

void main() {
  testWidgets('Dummy test, remove once real tests are added',
      (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(
      FlutterDeckApp(
        slides: const <FlutterDeckSlideWidget>[
          TitleSlide(),
        ],
      ),
    );
  });
}
