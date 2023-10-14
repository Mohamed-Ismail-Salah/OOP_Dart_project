# My Dart E-commerce App

Welcome to the My Dart e-commerce app! This project is a simple command-line e-commerce application created to practice object-oriented programming principles using Dart. It helps in clarifying the principles of object-oriented programming. It allows users to log in, create accounts, and shop for various products.!

## Features

### User Authentication
- Users can create accounts and log in to the application.
- User authentication is handled securely to protect user data.

### Product Listings
- Products are organized into categories, including Books, Clothes, and Electronics.
- Users can browse and search for products within these categories.
- Product details include a name, description, price, and availability.

### Orders
- Users can create orders, which represent the products they wish to purchase.
- Orders contain information about the selected products and their quantities.
- Users can view and manage their orders.

### User Profiles
- Users can view and edit their profiles, including personal information and order history.
- Profile information is securely stored and can be updated by the user.

## Object-Oriented Design

This project follows an object-oriented programming (OOP) approach to enhance maintainability and scalability. The main classes and their responsibilities are as follows:

- **User Class**: Manages user accounts, including registration, login, and profile information.
- **Product Class**: Represents the products available for purchase. Contains product details such as name, description, price, and availability.
- **Category Class**: Organizes products into categories (Books, Clothes, Electronics).
- **Cart Class**: Handles the user's shopping cart, allowing users to add and remove items.
- **Order Class**: Represents an order, including the products selected and their quantities. Allows users to view and cancel orders.
- **Profile Class**: Manages user profiles, including personal information and order history.
- **Main Application Class**: Orchestrates the interactions between users, products, categories, carts, and orders. Implements the command-line interface for user interactions.


## Object-Oriented Programming (OOP) Principles in the Code

This project demonstrates several Object-Oriented Programming (OOP) principles. Here's how they are applied in the code:

### Inheritance

- **Representation**: The classes `LoginUser` and `RegisterUser` extend from the base class `User`.
- **Usage**: This is evident in the code where common data and functions are shared between the derived and the base classes (`User`). This promotes code reusability and allows for specialized behavior in subclasses.

### Encapsulation

- **Representation**: The variable `_password` is defined as a private variable in the base class `User`.
- **Usage**: This represents the concept of encapsulation where access to the `_password` variable is restricted and controlled through setters and getters in the base class `User`. This ensures data security and integrity by controlling how the password can be modified.

### Polymorphism

- **Representation**: The `viewDetails()` function is redefined in the subclasses (`ElectronicsProduct`, `ClothingProduct`, `BookProduct`) to modify the behavior of the function to suit each type of product.
- **Usage**: This represents polymorphism where the same `viewDetails()` function can be called regardless of the product type, and it's processed appropriately based on the type. This allows for flexibility in handling different product types with a common interface.

### Composition and Aggregation

- **Representation**: The `Order` class contains a list of required products as `orderedProducts`.
- **Usage**: Composition and aggregation are used to create a relationship between the `Order` and `Product` classes, where orders are composed of a collection of products. This structure allows for managing complex relationships and hierarchies of objects.

### Multiple Inheritance

- **Representation**: Two functionalities are supported between the `Order` and `Product` classes, meaning advantages of both classes are used together.
- **Usage**: This is used when extending the `Order` class with additional properties and functions without altering the fundamental structure of the `Product` class. Multiple inheritance facilitates the combination of features from different classes while avoiding code duplication.

These OOP principles make the code more organized, maintainable, and extensible, providing a solid foundation for building a versatile e-commerce system.


 

 

 

 
