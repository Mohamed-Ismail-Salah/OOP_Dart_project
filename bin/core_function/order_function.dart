import 'dart:io';

import '../shop_classes/Product_class.dart';
import '../shop_classes/order_class.dart';
import 'product_function.dart';

void showProductTypes() {
  print("Available product types:");
  print("1. Books");
  print("2. Clothes");
  print("3. Electronics");
  print("4. Exit");

  String? productChoice = stdin.readLineSync();

  if (productChoice == "1") {
    listProducts(listBookProduct());
  } else if (productChoice == "2") {
    listProducts(listClothingProduct());
  } else if (productChoice == "3") {
    listProducts(listElectronicsProduct());
  } else if (productChoice == "4") {
    print("Goodbye!");
  } else {
    print("Invalid option. Please choose 1, 2, 3, or 4.");
  }
}

void listProducts(List<Product> products) {
  for (var product in products) {
    print("=================================");
    product.viewDetails();
    print("=================================");
  }

  createOrder(products);
}

void createOrder(List<Product> products) {
  Order? currentOrder;
  print("Create a new order...");
  print("Please enter order information:");

  currentOrder = Order(1, DateTime.now());

  selectProducts(currentOrder, products);
}

void selectProducts(Order currentOrder, List<Product> products) {
  print("Select products by entering their numbers (separated by spaces):");
  String? productNumbersStr = stdin.readLineSync();
  List<String> productNumbers = productNumbersStr!.split(' ');

  for (var productNumber in productNumbers) {
    int index = int.parse(productNumber) - 1;
    if (index >= 0 && index < products.length) {
      currentOrder.addProduct(products[index]);
    }
  }

  currentOrder.viewOrderDetails();
  currentOrder.cancelOrder();
  print("1. Do you want to perform another operation?");
  print("0. Exit");
  String? operation = stdin.readLineSync();
  if (operation == "1") {
    showProductTypes();
  } else if (operation == "0") {
    print("Goodbye!");
  }
}
