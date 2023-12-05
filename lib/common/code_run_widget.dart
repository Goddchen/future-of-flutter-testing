import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:future_of_flutter_testing/common/async_value.dart';
import 'package:future_of_flutter_testing/services/process_service.dart';

enum CodeType {
  main,
  test,
}

class CodeRunWidget extends StatelessWidget {
  final CodeType _codeType;
  final String _path;

  const CodeRunWidget({
    required CodeType codeType,
    required String path,
    super.key,
  })  : _codeType = codeType,
        _path = path;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return Center(
        child: Text(
          'Live execution not available on web',
          style: FlutterDeckTheme.of(context).textTheme.bodyMedium,
        ),
      );
    }
    final ValueNotifier<AsyncValue<String>> processOutput =
        ValueNotifier<AsyncValue<String>>(AsyncValueData<String>(data: ''));
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ElevatedButton(
          onPressed: () async {
            processOutput.value = AsyncValueLoading<String>();
            await switch (_codeType) {
              CodeType.main => ProcessService.runFile(path: _path),
              CodeType.test => ProcessService.runTestFile(path: _path),
            }
                .match(
                  (Object error) => processOutput.value =
                      AsyncValueError<String>(error: error),
                  (String output) => processOutput.value =
                      AsyncValueData<String>(data: output),
                )
                .run();
          },
          child: const Text('Run code'),
        ),
        const SizedBox(height: 8),
        ValueListenableBuilder<AsyncValue<String>>(
          valueListenable: processOutput,
          builder: (BuildContext context, AsyncValue<String> value, ___) => () {
            switch (value) {
              case AsyncValueLoading<String> _:
                return CircularProgressIndicator(
                  color: FlutterDeckTheme.of(context)
                      .materialTheme
                      .colorScheme
                      .onPrimary,
                );
              case final AsyncValueError<String> error:
                return Text(
                  'Error: $error',
                  style: FlutterDeckTheme.of(context)
                      .textTheme
                      .bodyMedium
                      .copyWith(
                        color: FlutterDeckTheme.of(context)
                            .materialTheme
                            .colorScheme
                            .error,
                      ),
                );
              case final AsyncValueData<String> data:
                return Text(
                  data.data,
                  style: FlutterDeckTheme.of(context).textTheme.bodyMedium,
                );
            }
          }(),
        ),
      ],
    );
  }
}
