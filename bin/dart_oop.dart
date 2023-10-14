import 'dart:io';
import 'core_function/order_function.dart';
import 'shop_classes/user_class.dart';

void main(List<String> arguments) {
  print("Welcome!");
  print("Please choose action:");
  print("1. Log in");
  print("2. Create a new account");

  String? choice = stdin.readLineSync();

  if (choice == "1") {
    LoginUser loginUser = LoginUser();
    loginUser.loginFun();
    Status loginStatus = loginUser.checkData();

    if (loginStatus == Status.successful) {
      print("Login successful!");
      showProductTypes();
    } else {
      print("Login failed.");
    }
  } else if (choice == "2") {
    RegisterUser newUser = RegisterUser();
    newUser.register();
    newUser.infoUserData();
    showProductTypes();
  } else {
    print("Invalid option. Please choose 1 or 2.");
  }
}
