import 'dart:ui';

import 'package:checks/checks.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('extracting values', () {
    const Size size = Size(100, 100);
    check(size).has((Size size) => size.height, 'height').isGreaterThan(200);
  });
}
