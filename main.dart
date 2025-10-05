/* import "dart:io";
import 'dart:math';

void main() {
bool isSmart = false;
bool isStudent = false;
if (isStudent &&  isSmart){
   print("You are a smart student");
}
  else if(isStudent && !isSmart){
  print("You are a student but not smart");
} else if(isStudent && isSmart){
   print("You are smart but not a student");
}  else if(!isStudent && !isSmart)
  {
    print("You are neither a student nor smart. Chaii");
}
  
}

*/

import 'dart:io';

void main() {
  List<String> loginOpt = ["Login", "SignUp"]; // login options
  print (loginOpt);

  bool Login = true;
  bool SignUp = true;

  if (Login) {
    print("Enter a username ");
  
  String userName = stdin.readLineSync() ?? ' Enter a username ';
  }

  String userName = stdin.readLineSync() ?? ' Enter a username ';
}
