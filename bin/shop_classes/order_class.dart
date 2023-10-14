import 'Product_class.dart';

enum OrderStatus { pending, shipped, delivered, canceled }

class Order {
  int orderId;
  DateTime orderDate;
  List<Product> orderedProducts = [];
  OrderStatus status = OrderStatus.pending; // Default status is "pending"

  Order(this.orderId, this.orderDate);

  // Named constructor for creating an Order with a specified order date.
  Order.withOrderDate(
    this.orderId,
    this.orderDate,
  );

  // Methods for order-related operations
  void viewOrderDetails() {
    print('Order Details:');
    print('Order ID: $orderId');
    print('Order Date: ${orderDate.toString()}');
    print('Order Status: $status'); // Display the order status
    print('Ordered Products:');
    for (var product in orderedProducts) {
      print('Product Name: ${product.name}');
      print('Product Price: \$${product.price.toStringAsFixed(2)}');
    }
  }

  void addProduct(Product product) {
    orderedProducts.add(product);
  }

  void cancelOrder() {
    if (status == OrderStatus.pending) {
      status = OrderStatus.canceled;
      print('Order $orderId has been canceled.');
    } else {
      print('Cannot cancel the order because it is not in "pending" status.');
    }
  }
}
