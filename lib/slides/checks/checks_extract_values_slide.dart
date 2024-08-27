import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:future_of_flutter_testing/widgets/bullet_list.dart'
    as local_bullet_list;
import 'package:future_of_flutter_testing/widgets/code_run_widget.dart';

class ChecksExtractValuesSlide extends FlutterDeckSlideWidget {
  const ChecksExtractValuesSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            header: FlutterDeckHeaderConfiguration(
              title: 'checks - extract values',
            ),
            route: '/checks/extract-values',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) => FlutterDeckSlide.split(
        leftBuilder: (_) => const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FlutterDeckCodeHighlight(
                code: '''
const Size size = Size(100, 100);
check(size).has((size) => size.height, 'height').isGreaterThan(200);''',
              ),
              SizedBox(height: 16),
              CodeRunWidget(
                codeType: CodeType.test,
                path: 'checks_extract_value_test.dart',
              ),
            ],
          ),
        ),
        rightBuilder: (_) => local_bullet_list.FlutterDeckBulletList(
          items: const <String>[
            'Extract or derive a value from another value',
            'It will return a new Subject for the extracted value',
            'It will perform all subsequent checks on that extracted value',
          ],
        ),
      );
}
