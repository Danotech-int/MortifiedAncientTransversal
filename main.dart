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
  List<Map<String, String>> users = [];
  List<String> products = ["Shoes", "T-Shirts", "Phones"];
  List<String> cart = [];
  String? currentUser;

  while (true) {
    print("=== Welcome to Dart E-Commerce App ===");
    print("1. Login");
    print("2. Sign Up");
    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    if (choice == '2') {
      // SIGN UP
      stdout.write("Enter a username: ");
      String? username = stdin.readLineSync();

      stdout.write("Enter a password: ");
      String? password = stdin.readLineSync();

      if (username != null && password != null) {
        users.add({"username": username, "password": password});
        print("✅ Sign up successful! You can now log in.");
      }
    } 
    else if (choice == '1') {
      // LOGIN
      stdout.write("Enter your username: ");
      String? username = stdin.readLineSync();

      stdout.write("Enter your password: ");
      String? password = stdin.readLineSync();

      bool loggedIn = false;

      for (var user in users) {
        if (user["username"] == username && user["password"] == password) {
          loggedIn = true;
          currentUser = username;
          break;
        }
      }

      if (loggedIn) {
        print("\n✅ Welcome, $currentUser!");

        // After login: Show user actions
        while (true) {
          print("\n--- Menu ---");
          print("1. View Products");
          print("2. Add Product to Cart");
          print("3. View Cart");
          print("4. Logout");
          stdout.write("Choose an option: ");
          String? option = stdin.readLineSync();

          if (option == '1') {
            print("\nAvailable Products:");
            for (var i = 0; i < products.length; i++) {
              print("${i + 1}. ${products[i]}");
            }
          } 
          else if (option == '2') {
            print("\nSelect a product number to add to cart:");
            for (var i = 0; i < products.length; i++) {
              print("${i + 1}. ${products[i]}");
            }
            stdout.write("Enter number: ");
            String? prodChoice = stdin.readLineSync();
            int index = int.tryParse(prodChoice ?? '') ?? -1;

            if (index > 0 && index <= products.length) {
              cart.add(products[index - 1]);
              print("✅ Added ${products[index - 1]} to cart.");
            } else {
              print("❌ Invalid choice.");
            }
          } 
          else if (option == '3') {
            print("\n🛒 Your Cart:");
            if (cart.isEmpty) {
              print("Cart is empty.");
            } else {
              for (var item in cart) {
                print("- $item");
              }
              print("Total items: ${cart.length}");
            }
          } 
          else if (option == '4') {
            print("👋 Logged out.\n");
            break;
          } 
          else {
            print("❌ Invalid option. Try again.");
          }
        }
      } else {
        print("❌ Invalid credentials, try again!");
      }
    } else {
      print("❌ Invalid option, choose 1 or 2.");
    }
  }
}
