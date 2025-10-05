import 'dart:io';

void main() {
  List<String> loginOpt = ["Login", "SignUp"]; // login options

  bool Login = true;
  bool SignUp = true;

  if (Login) {
    print("Enter a username ");

    String userName = stdin.readLineSync() ?? ' ';
  }
}
