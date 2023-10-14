// Base class for all products
class Product {
  String name;
  double price;

  Product({required this.name, required this.price});

  void viewDetails() {
    print('Product: $name');
    print('Price: \$$price');
  }
}

// Subclass for Electronics
class ElectronicsProduct extends Product {
  String brand;
  String model;

  ElectronicsProduct(
      {required super.name,
      required super.price,
      required this.brand,
      required this.model});
  // Additional methods and properties specific to electronics products
  @override
  void viewDetails() {
    print('Product: $name');
    print('Price: \$$price');
    print('Brand: $brand');
    print('Model: $model');
  }
}

// Subclass for Clothing
class ClothingProduct extends Product {
  String size;
  String color;

  ClothingProduct(
      {required super.name,
      required super.price,
      required this.size,
      required this.color});

  // Additional methods and properties specific to clothing products
  @override
  void viewDetails() {
    print('Product: $name');
    print('Price: \$$price');
    print('Size: $size');
    print('Color: $color');
  }
}

// Subclass for Books
class BookProduct extends Product {
  String author;
  String genre;

  BookProduct(
      {required super.name,
      required super.price,
      required this.author,
      required this.genre});

  // Additional methods and properties specific to book products
  @override
  void viewDetails() {
    print('Product: $name');
    print('Price: \$$price');
    print('Author: $author');
    print('Genre: $genre');
  }
}
