import 'dart:io';
import 'dart:math';
import '../data/customerDate.dart';
import 'client.dart';
import 'compte.dart';

void main() {
  int choice;
  String pursuit = "YES";
  while (pursuit == "YES") {
    do {
      Menu();
      choice = int.parse(stdin.readLineSync()!);
    } while (choice < 1 || choice > 5);

    Operation(choice);

    do {
      print("Would you like to continue? Yes/No\n\n");
      pursuit = stdin.readLineSync()!.toUpperCase();
    } while (pursuit != "YES" && pursuit != "NO");
  }
}

Menu() {
  print(
      "\n\n\n\n---------------------------Welcome on KOFBANK !---------------------------");
  print("1 - Add A Customer \n");
  print("2 - List Of Customers \n");
  print("2 - Make A Deposit \n");
  print("4 - Make A Withdrawal \n");
  print("5 - Transfer Money \n");
  // print("6 - Exit\n\n");
  print("Hello! Make Your Choice Please !\n\n\n");
}

Operation(choice) {
  switch (choice) {
    case 1:
      AddCustomer();
      break;
    case 2:
      ListCustomer();
      break;
    case 3:
      Deposit();
      break;
    case 4:
      Withdrawal();
      break;
    case 5:
      Transfert();
      break;
    // case 6:
    //   print("Thank you for using the KOFBANK management application !\n\n\n\n");
    //   break;
    default:
      print("Invalid option, please try again.\n\n\n\n");
      return 1;
  }
}

AddCustomer() {
  // Ajouter le code pour ajouter un client ici
  print(
      "\n\n\n\n---------------------------Customer's Informations---------------------------\n");
  print("------------LastName------------\n");
  String lastName = stdin.readLineSync()!;
  print("\n------------FirstName------------\n");
  String firstName = stdin.readLineSync()!;
  print("\n------------Phone------------\n");
  String phone = stdin.readLineSync()!;
  print("\n------------Email------------\n");
  String email = stdin.readLineSync()!;
  print("\n------------Birthday : (AAAA-MM-DD)------------\n");
  DateTime date = DateTime.parse(stdin.readLineSync()!);
  print(
      "\n------------Account Type (1 - Epargne et 2 - Courant  ------------\n");
  int accountType = int.parse(stdin.readLineSync()!);
  TypeCompte type = TypeCompte.values.elementAt(accountType - 1);

  String numcpt(String lastName, String firstName) {
    int x = Random().nextInt(999) + 1;
    return "KOFBANK-" + lastName[0] + firstName[0] + "-" + x.toString();
  }

  Compte anAccount =
      new Compte(numcpt(lastName, firstName), 0, DateTime.now(), type);

  Client customer =
      new Client(lastName, firstName, phone, email, date, anAccount);

  CustomerData.customers.add(customer);
  //print(anAccount);
}

ListCustomer() {
  CustomerData.customes();
}

Deposit() {
//   print("\n------------Numero de compte destinataire------------\n");
//   String number = stdin.readLineSync()!;
//   double solde = stdin.readLineSync()!;
//   Compte.faireDepot(solde);
}

Withdrawal() {
  // Ajouter le code pour faire un retrait ici
  print("Option non implémentée");
}

Transfert() {
  // Ajouter le code pour transférer de l'argent ici
  print("Option non implémentée");
}
