import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:desafio_neumorphic/app/modules/shared/neuromorphic_container/neuromorphic_container_controller.dart';
import 'package:desafio_neumorphic/app/app_module.dart';

void main() {
  initModule(AppModule());
  NeuromorphicContainerController neuromorphiccontainer;

  setUp(() {
    neuromorphiccontainer = AppModule.to.get<NeuromorphicContainerController>();
  });

  group('NeuromorphicContainerController Test', () {
    test("First Test", () {
      expect(neuromorphiccontainer,
          isInstanceOf<NeuromorphicContainerController>());
    });

    test("Set Value", () {
      expect(neuromorphiccontainer.value, equals(0));
      neuromorphiccontainer.increment();
      expect(neuromorphiccontainer.value, equals(1));
    });
  });
}
