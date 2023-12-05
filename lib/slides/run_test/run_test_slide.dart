import 'package:cross_file/cross_file.dart';
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
        leftBuilder: (_) => FutureBuilder<String>(
          future: XFile(Assets.runTest).readAsString(),
          builder: (_, AsyncSnapshot<String> snapshot) =>
              FlutterDeckCodeHighlight(
            code: snapshot.data ?? 'Loading...',
            fileName: 'run_test.dart',
          ),
        ),
        rightBuilder: (_) => const CodeRunWidget(
          codeType: CodeType.test,
          path: Assets.runTest,
        ),
      );
}
