import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:desafio_neumorphic/app/modules/shared/ShadowText/ShadowText_controller.dart';
import 'package:desafio_neumorphic/app/app_module.dart';

void main() {
  initModule(AppModule());
  ShadowTextController shadowtext;

  setUp(() {
    shadowtext = AppModule.to.get<ShadowTextController>();
  });

  group('ShadowTextController Test', () {
    test("First Test", () {
      expect(shadowtext, isInstanceOf<ShadowTextController>());
    });

    test("Set Value", () {
      expect(shadowtext.value, equals(0));
      shadowtext.increment();
      expect(shadowtext.value, equals(1));
    });
  });
}
