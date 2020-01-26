import 'package:mobx/mobx.dart';

part 'neuromorphic_container_controller.g.dart';

class NeuromorphicContainerController = _NeuromorphicContainerBase
    with _$NeuromorphicContainerController;

abstract class _NeuromorphicContainerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
