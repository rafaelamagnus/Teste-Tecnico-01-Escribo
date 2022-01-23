import 'package:mobx/mobx.dart';
import 'package:teste_tecnico01_escribo/modules/presenters/home/home_store.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  HomeStore editAccountStore = HomeStore();

  int validate() {
    final number = int.parse(editAccountStore.numero);
    var _count = 0;
    Iterable.generate(number).forEach((i) {
      if (i % 3 == 0 || i % 5 == 0) _count += i.hashCode;
    });
    return editAccountStore.setresultado(_count);
  }
}
