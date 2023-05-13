import '../models/client.dart';

class CustomerData {
  static List<Client> customers = [];

  static customes() {
    customers.forEach((element) {
      print(element);
    });
  }
}
