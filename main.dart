import 'dart:io';

void main(){

List <Map <String, Strings>> users = []
print("======== Welcome To our Dart Store =======");
List<String> options= ["1. Login", "2. SignUP", "3. Login as admin"];
print("");
print(options[0]);
print(options[1]);
print(options[2]);
stdout.write("Select an option: ") ;
String? choice = stdin.readLineSync ();

if(choice == '2') {
  stdout.write("Enter a username: ");
  String? username = stdin.readLineSync();
  stdout.write("Enter a password: ");
  String? password = stdin.readLineSync();
  if(username != null && password != null){
  users.add( {"username": username, "password": password}) ;
   print("You can now Login.");
  }
} else if(choice == '1'){

  
}






  
}
