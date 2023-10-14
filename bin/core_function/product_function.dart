import '../shop_classes/Product_class.dart';

List<Product> listElectronicsProduct() {
  List<Product> productList = [];
  for (int i = 1; i <= 10; i++) {
    productList.add(ElectronicsProduct(
        name: "ElectronicsProduct$i",
        price: i * 10,
        brand: "brand $i",
        model: "model $i"));
  }

  return productList;
}

List<Product> listClothingProduct() {
  List<Product> productList = [];
  List color = [
    "Red",
    "Blue",
    "Green",
    "Yellow",
    "Purple",
    "Orange",
    "Pink",
    "Brown",
    "Gray",
    "Teal"
  ];

  for (int i = 1; i <= 10; i++) {
    productList.add(ClothingProduct(
        name: "ClothingProduct$i",
        price: i * 10,
        size: "$i x",
        color: color[i - 1])); // Fixed index access here
  }

  return productList;
}

List<Product> listBookProduct() {
  List<Product> productList = [];
  List genre = [
    "Mystery",
    "Science ",
    "Fiction",
    "Fantasy",
    "Romance",
    "Thriller",
    "Historical",
    "Fiction",
    "Horror",
    "Biography"
  ];
  List authors = [
    "Jane Austen",
    "George Orwell",
    "J.K. Rowling",
    "Stephen King",
    "Harper Lee",
    "Mark Twain",
    "Agatha Christie",
    "Toni Morrison",
    "Ernest Hemingway",
    "Gabriel García Márquez"
  ];
  for (int i = 1; i <= 10; i++) {
    productList.add(BookProduct(
        name: "ClothingProduct$i",
        price: i * 10,
        author: authors[(i - 1)],
        genre: genre[(i - 1)]));
  }

  return productList;
}

void showBookProduct() {
  for (Product i in listBookProduct()) {
    print("=================================");
    print("=*=      BookProduct         =*=");
    print("=================================");
    i.viewDetails();
  }
}

void showClothingProduct() {
  for (Product i in listClothingProduct()) {
    print("=================================");
    print("=*=       ClothingProduct     =*=");
    print("=================================");
    i.viewDetails();
  }
}

void showElectronicsProduct() {
  for (Product i in listElectronicsProduct()) {
    print("=================================");
    print("=*=       ElectronicsProduct  =*=");
    print("=================================");
    i.viewDetails();
  }
}
