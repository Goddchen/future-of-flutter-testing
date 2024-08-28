import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:future_of_flutter_testing/gen/assets.gen.dart';
import 'package:future_of_flutter_testing/services/navigation_service.dart';
import 'package:future_of_flutter_testing/slides/checks/checks_advanced_slide.dart';
import 'package:future_of_flutter_testing/slides/checks/checks_composition_big_fact_slide.dart';
import 'package:future_of_flutter_testing/slides/checks/checks_composition_slide.dart';
import 'package:future_of_flutter_testing/slides/checks/checks_example_1_slide.dart';
import 'package:future_of_flutter_testing/slides/checks/checks_extensability_big_fact_slide.dart';
import 'package:future_of_flutter_testing/slides/checks/checks_extensability_slide.dart';
import 'package:future_of_flutter_testing/slides/checks/checks_extract_values_big_fact_slide.dart';
import 'package:future_of_flutter_testing/slides/checks/checks_extract_values_slide.dart';
import 'package:future_of_flutter_testing/slides/checks/checks_ide_integration_screenshot_slide.dart';
import 'package:future_of_flutter_testing/slides/checks/checks_ide_integration_slide.dart';
import 'package:future_of_flutter_testing/slides/checks/checks_infos_slide.dart';
import 'package:future_of_flutter_testing/slides/checks/checks_intro_slide.dart';
import 'package:future_of_flutter_testing/slides/checks/checks_type_safety_big_fact_slide.dart';
import 'package:future_of_flutter_testing/slides/checks/checks_type_safety_slide.dart';
import 'package:future_of_flutter_testing/slides/matching/matching_example_slide.dart';
import 'package:future_of_flutter_testing/slides/matching/matching_slide.dart';
import 'package:future_of_flutter_testing/slides/questions/questions_slide.dart';
import 'package:future_of_flutter_testing/slides/title/title_slide.dart';
import 'package:future_of_flutter_testing/slides/why_testing/why_testing_regression_bugs_slide.dart';
import 'package:future_of_flutter_testing/slides/why_testing/why_testing_title_slide.dart';
import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

void main() async {
  GetIt.I.registerSingleton(NavigationService());

  const Color flutterBrandColorDark = Color.fromARGB(255, 4, 43, 89);
  const Color flutterBrandColorLight = Color.fromARGB(255, 2, 125, 253);
  const Color flutterBrandColorMedium = Color.fromARGB(255, 5, 83, 177);

  runApp(
    FlutterDeckApp(
      configuration: const FlutterDeckConfiguration(
        background: FlutterDeckBackgroundConfiguration(
          dark: FlutterDeckBackground.gradient(
            LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                flutterBrandColorDark,
                flutterBrandColorMedium,
              ],
              stops: <double>[0.8, 1],
            ),
          ),
          light: FlutterDeckBackground.gradient(
            LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                flutterBrandColorLight,
                flutterBrandColorMedium,
              ],
              stops: <double>[0.7, 1],
            ),
          ),
        ),
        footer: FlutterDeckFooterConfiguration(
          widget: _CustomFooter(),
        ),
      ),
      darkTheme: FlutterDeckThemeData.dark().copyWith(
        splitSlideTheme: const FlutterDeckSplitSlideThemeData(
          rightBackgroundColor: flutterBrandColorDark,
        ),
      ),
      lightTheme: FlutterDeckThemeData.light().copyWith(
        splitSlideTheme: const FlutterDeckSplitSlideThemeData(
          rightBackgroundColor: flutterBrandColorLight,
        ),
      ),
      slides: const <FlutterDeckSlideWidget>[
        TitleSlide(),
        WhyTestingTitleSlide(),
        WhyTestingRegressionBugsSlide1(),
        WhyTestingRegressionBugsSlide2(),
        MatchingSlide(),
        MatchingExampleSlide(),
        ChecksIntroSlide(),
        ChecksInfosSlide(),
        ChecksExample1Slide(),
        ChecksTypeSafetyBigFactSlide(),
        ChecksTypeSafetySlide(),
        ChecksExtensabilityBigFactSlide(),
        ChecksExtensabilitySlide(),
        ChecksIdeIntegrationSlide(),
        ChecksIdeIntegrationScreenshotSlide(),
        ChecksAdvancedSlide(),
        ChecksCompositionBigFactSlide(),
        ChecksCompositionSlide(),
        ChecksExtractValuesBigFactSlide(),
        ChecksExtractValuesSlide(),
        QuestionsSlide(),
      ],
      speakerInfo: FlutterDeckSpeakerInfo(
        name: 'Martin "Goddchen" Liersch',
        description: 'Flutter developer from Germany',
        socialHandle: '@Goddchen',
        imagePath: Assets.avatar.path,
      ),
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
