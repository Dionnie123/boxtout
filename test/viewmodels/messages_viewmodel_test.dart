import 'package:flutter_test/flutter_test.dart';
import 'package:boxtout/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('MessagesViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
