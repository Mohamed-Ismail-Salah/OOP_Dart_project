// Class for new creating a User
import 'dart:io';

class User {
  String name;
  String email;
  String _password = "00000000";
  String phone;
  DateTime registrationDate = DateTime.now();
  // constructor for creating a User
  User({
    this.email = "mohamed@gmail.com",
    this.name = "mohamed",
    this.phone = "01112356",
  });

  set setpassword(String pass) {
    if (pass == "00000000") {
      _password = pass;
    } else {
      print("The password is weak, please make it 8 characters or more");
    }
  }

  String get getpassword => _password;

  // Methods for user-data
  void infoUserData() {
    print('User Profile:');
    print('---------------');
    print('Name: $name');
    print('---------------');
    print('Email: $email');
    print('---------------');
    print('Email: $phone');
    print('---------------');
    print('---------------');
    print('Registration Date: ${registrationDate.toString()}');
    print('---------------');
  }
}

enum Status { failed, successful }

class LoginUser extends User {
  String? chName;
  String? chEmail;
  String? chPasword;

  loginFun() {
    print("HI! Please log in");
    print('Enter your name:');
    chName = stdin.readLineSync() ?? '';
    print('Enter your email:');
    chEmail = stdin.readLineSync() ?? '';
    print('Enter your pasword:');
    chPasword = stdin.readLineSync() ?? '';
  }

  Status checkData() {
    if (super.name != chName) {
      print("Please enter the correct name!");
      return Status.failed;
    }
    if (super.email != chEmail) {
      print("Please enter the correct emile!");
      return Status.failed;
    }

    if (super.getpassword != chPasword) {
      print("Please enter the correct Pasword!");
      return Status.failed;
    }

    return Status.successful;
  }
}

class RegisterUser extends User {
  String? regName;
  String? regEmail;
  String? regPassword;
  String? regPhone;

  register() {
    print("Hi! Please register");
    print('Enter your name:');
    regName = stdin.readLineSync() ?? '';
    print('Enter your email:');
    regEmail = stdin.readLineSync() ?? '';
    print('Enter your password:');
    regPassword = stdin.readLineSync() ?? '';
    print('Enter your phone:');
    regPhone = stdin.readLineSync() ?? '';

    if (validateRegistration()) {
      super.name = regName!;
      super.email = regEmail!;
      super.setpassword = regPassword!;
      super.phone = regPhone!;
      registrationDate = DateTime.now();
      print("Registration successful!");
    } else {
      print("Registration failed. Please check your registration details.");
    }
  }

  bool validateRegistration() {
    return regName != null &&
        regEmail != null &&
        regPassword != null &&
        regPhone != null &&
        regPassword!.length >= 8;
  }
}
