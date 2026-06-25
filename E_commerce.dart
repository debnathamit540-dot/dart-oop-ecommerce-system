// ABSTRACT CLASS
abstract class User {
  String name;
  String email;

  User(this.name, this.email);

  void displayInfo();
}

// INTERFACE
abstract class PaymentMethod {
  void makePayment(double amount);
}

// PAYMENT METHODS
class BkashPayment implements PaymentMethod {
  @override
  void makePayment(double amount) {
    print('Paid ৳$amount using bKash');
  }
}

class NagadPayment implements PaymentMethod {
  @override
  void makePayment(double amount) {
    print('Paid ৳$amount using Nagad');
  }
}

class CardPayment implements PaymentMethod {
  @override
  void makePayment(double amount) {
    print('Paid ৳$amount using Card');
  }
}

// PRODUCT CLASS
class Product {
  String name;
  double price;

  Product(this.name, this.price);

  @override
  String toString() {
    return '$name - ৳$price';
  }
}

// INHERITANCE
class Customer extends User {
  Customer(String name, String email) : super(name, email);

  @override
  void displayInfo() {
    print('Customer Name: $name');
    print('Email: $email');
  }
}

// ENCAPSULATION
class Cart {
  final List<Product> _products = [];

  void addProduct(Product product) {
    _products.add(product);
    print('${product.name} added to cart.');
  }

  List<Product> get products => _products;

  double getTotalPrice() {
    double total = 0;

    for (var product in _products) {
      total += product.price;
    }

    return total;
  }
}

// ORDER CLASS
class Order {
  Customer customer;
  Cart cart;
  PaymentMethod paymentMethod;

  Order(this.customer, this.cart, this.paymentMethod);

  void placeOrder() {
    print('\n-------- Order Details --------');

    customer.displayInfo();

    print('\n-------- Products in Cart --------');

    for (var product in cart.products) {
      print(product);
    }

    double totalPrice = cart.getTotalPrice();

    print('\nTotal Price: ৳$totalPrice');

    paymentMethod.makePayment(totalPrice);
  }
}

// POLYMORPHISM
class Admin extends User {
  Admin(String name, String email) : super(name, email);

  @override
  void displayInfo() {
    print('Admin Name: $name');
    print('Email: $email');
  }
}

void main() {
  Product p1 = Product('Laptop', 50000);
  Product p2 = Product('Mouse', 1000);
  Product p3 = Product('Keyboard', 500);
  Product p4 = Product('Mobile', 30000);
  Product p5 = Product('Headphones', 1400);

  Customer customer = Customer('Amit', 'amit@example.com');

  Cart cart = Cart();

  cart.addProduct(p1);
  cart.addProduct(p2);
  cart.addProduct(p3);
  cart.addProduct(p4);
  cart.addProduct(p5);

  // Change payment method here
  PaymentMethod paymentMethod = BkashPayment();

  Order order = Order(customer, cart, paymentMethod);

  order.placeOrder();

  print('\n-------- Users --------');

  List<User> users = [customer, Admin('Admin', 'admin@gmail.com')];

  for (var user in users) {
    user.displayInfo();
    print('');
  }
}
