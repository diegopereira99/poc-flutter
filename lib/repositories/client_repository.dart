import 'package:teste23/models/client_model.dart';

class ClientRepository {

  List<Client> getClient() {
    return [ 
      Client('Diego', 21, 'male'),
      Client('João', 21, 'male'),
    ];
  }

}