import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:desafio_neumorphic/app/modules/shared/neuromorphic_container/neuromorphic_container_widget.dart';

main() {
  testWidgets('NeuromorphicContainerWidget has message',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(NeuromorphicContainerWidget(color: null,)));
    final textFinder = find.text('NeuromorphicContainer');
    expect(textFinder, findsOneWidget);
  });
}
