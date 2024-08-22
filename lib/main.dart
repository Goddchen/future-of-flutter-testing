import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:future_of_flutter_testing/gen/assets.gen.dart';
import 'package:future_of_flutter_testing/services/navigation_service.dart';
import 'package:future_of_flutter_testing/slides/questions/questions_slide.dart';
import 'package:future_of_flutter_testing/slides/run_test/run_test_slide.dart';
import 'package:future_of_flutter_testing/slides/title/title_slide.dart';
import 'package:future_of_flutter_testing/slides/why_testing/why_testing_regression_bugs_slide.dart';
import 'package:future_of_flutter_testing/slides/why_testing/why_testing_title_slide.dart';
import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

void main() async {
  GetIt.I.registerSingleton(NavigationService());
  runApp(
    FlutterDeckApp(
      configuration: const FlutterDeckConfiguration(
        background: FlutterDeckBackgroundConfiguration(
          dark: FlutterDeckBackground.gradient(
            LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color.fromARGB(255, 4, 43, 89),
                Color.fromARGB(255, 5, 83, 177),
              ],
              stops: <double>[0.8, 1],
            ),
          ),
          light: FlutterDeckBackground.gradient(
            LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color.fromARGB(255, 2, 125, 253),
                Color.fromARGB(255, 5, 83, 177),
              ],
              stops: <double>[0.7, 1],
            ),
          ),
        ),
        footer: FlutterDeckFooterConfiguration(
          widget: _CustomFooter(),
        ),
      ),
      speakerInfo: FlutterDeckSpeakerInfo(
        name: 'Martin "Goddchen" Liersch',
        description: 'Flutter developer from Germany',
        socialHandle: '@Goddchen',
        imagePath: Assets.avatar.path,
      ),
      slides: const <FlutterDeckSlideWidget>[
        TitleSlide(),
        RunTestSlide(),
        WhyTestingTitleSlide(),
        WhyTestingRegressionBugsSlide1(),
        WhyTestingRegressionBugsSlide2(),
        QuestionsSlide(),
      ],
    ),
  );
}

class _CustomFooter extends StatelessWidget {
  const _CustomFooter();

  @override
  Widget build(BuildContext context) => FutureBuilder<PackageInfo>(
        future: PackageInfo.fromPlatform(),
        builder: (
          BuildContext context,
          AsyncSnapshot<PackageInfo> snapshot,
        ) =>
            snapshot.hasData
                ? RichText(
                    text: TextSpan(
                      children: <InlineSpan>[
                        if (snapshot.data
                            case final PackageInfo packageInfo) ...<InlineSpan>[
                          TextSpan(text: packageInfo.version),
                          const TextSpan(text: ' - '),
                        ],
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => launchUrl(
                                  Uri.parse(
                                    'https://github.com/Goddchen/future-of-flutter-testing',
                                  ),
                                  mode: LaunchMode.externalApplication,
                                ),
                          style: TextStyle(
                            color: FlutterDeckTheme.of(context)
                                .materialTheme
                                .colorScheme
                                .primary,
                          ),
                          text:
                              'https://github.com/Goddchen/future-of-flutter-testing',
                        ),
                      ],
                    ),
                  )
                : const CircularProgressIndicator(),
      );
}
