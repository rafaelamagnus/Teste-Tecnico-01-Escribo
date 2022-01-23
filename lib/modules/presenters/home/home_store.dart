import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  String numero;

  @observable
  int resultado;

  @action
  setnumero(String value) => numero = value;

  @action
  setresultado(int value) => resultado = value;
}
