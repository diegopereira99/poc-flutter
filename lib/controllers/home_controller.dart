import 'package:teste23/models/client_model.dart';
import 'package:teste23/repositories/client_repository.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;
abstract class _HomeControllerBase with Store {
  ClientRepository repository = ClientRepository();
  
  @observable
  ObservableList<Client> clients =  ObservableList.of([]);
  
  @observable
  int counter = 0;

  @observable
  String title = '';

  @action
  void getClients() {
    clients = ObservableList.of(repository.getClient());
  }
  
  @action
  void removeClient(String name) {
    clients.removeWhere((client) => client.name == name);
  }
  
}





