import 'dart:io';

import 'package:fpdart/fpdart.dart';

class ProcessService {
  static TaskEither<Object, String> runFile({required String path}) =>
      TaskEither<Object, String>.tryCatch(
        () async {
          final ProcessResult processResult = await Process.run(
            'fvm',
            <String>[
              'dart',
              path,
            ],
            runInShell: true,
          );
          if (processResult.exitCode != 0) {
            throw Exception(
              'Error running process: exitCode: ${processResult.exitCode}'
              ', stderr: ${processResult.stderr}'
              ', stdout: ${processResult.stdout}',
            );
          }
          return processResult.stdout as String;
        },
        (Object error, __) => error,
      );

  static TaskEither<Object, String> runTestFile({required String path}) =>
      TaskEither<Object, String>.tryCatch(
        () async {
          final ProcessResult processResult = await Process.run(
            'fvm',
            <String>[
              'flutter',
              'test',
              path,
            ],
            runInShell: true,
          );
          if (processResult.exitCode != 0) {
            throw Exception(
              'Error running process: exitCode: ${processResult.exitCode}'
              ', stderr: ${processResult.stderr}'
              ', stdout: ${processResult.stdout}',
            );
          }
          return processResult.stdout as String;
        },
        (Object error, __) => error,
      );
}
