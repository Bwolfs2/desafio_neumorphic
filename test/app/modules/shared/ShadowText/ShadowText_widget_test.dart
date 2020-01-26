import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:desafio_neumorphic/app/modules/shared/ShadowText/ShadowText_widget.dart';

main() {
  testWidgets('ShadowTextWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ShadowTextWidget()));
    final textFinder = find.text('ShadowText');
    expect(textFinder, findsOneWidget);
  });
}
