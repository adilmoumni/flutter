// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:integration_ui/build_mode.dart' as app;

void main() {
  group('Integration Test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets('smoke test', (WidgetTester tester) async {
        app.main();
        await tester.pumpAndSettle();

        expect(find.text('Hello, world!'), findsOneWidget);
      });
  });
}
