import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:future_of_flutter_testing/common/code_run_widget.dart';
import 'package:future_of_flutter_testing/gen/assets.gen.dart';

class RunTestSlide extends FlutterDeckSlideWidget {
  const RunTestSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/run-test',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.split(
        leftBuilder: (_) => FlutterDeckCodeHighlight(
          code: File(Assets.runTest).readAsStringSync(),
          fileName: 'run_test.dart',
        ),
        rightBuilder: (_) => const CodeRunWidget(
          codeType: CodeType.test,
          path: Assets.runTest,
        ),
      );
}
