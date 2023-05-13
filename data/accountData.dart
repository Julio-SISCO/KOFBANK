import '../models/compte.dart';

class CustomerData {
  static List<Compte> accounts = [];

  static Accounts() {
    accounts.forEach((element) {
      print(element);
    });
  }
}