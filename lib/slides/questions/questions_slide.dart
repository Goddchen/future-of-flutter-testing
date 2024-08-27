import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:future_of_flutter_testing/gen/assets.gen.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QuestionsSlide extends FlutterDeckSlideWidget {
  const QuestionsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(title: 'Questions?'),
            route: '/questions',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.blank(
        builder: (BuildContext context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: Assets.dashQuestions.image(
                fit: BoxFit.contain,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const Text(
                      'https://github.com/Goddchen/future-of-flutter-testing',
                    ),
                    QrImageView(
                      data:
                          'https://github.com/Goddchen/future-of-flutter-testing',
                      size: 200,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    const Text('https://future-of-flutter-testing.web.app/'),
                    QrImageView(
                      data: 'https://future-of-flutter-testing.web.app/',
                      size: 200,
                    ),
                  ],
                ),
              ],
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Dash image source: https://github.com/ManasMalla/DashingThrough',
              ),
            ),
          ],
        ),
      );
}
