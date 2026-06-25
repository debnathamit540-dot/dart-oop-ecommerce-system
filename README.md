# dart-oop-ecommerce-system


A simple console-based E-Commerce application built with Dart to demonstrate Object-Oriented Programming (OOP) concepts.

## Features

* Add products to shopping cart
* View cart products
* Calculate total price
* Place orders
* Multiple payment methods

  * bKash
  * Nagad
  * Card Payment
* User management

  * Customer
  * Admin

## OOP Concepts Used

### 1. Abstraction

Abstract classes are used to define common behavior.

```dart
abstract class User
abstract class PaymentMethod
```

### 2. Inheritance

Customer and Admin inherit from the User class.

```dart
class Customer extends User
class Admin extends User
```

### 3. Interface

Different payment methods implement the PaymentMethod interface.

```dart
class BkashPayment implements PaymentMethod
class NagadPayment implements PaymentMethod
class CardPayment implements PaymentMethod
```

### 4. Encapsulation

The cart products list is kept private and accessed through a getter.

```dart
final List<Product> _products = [];
```

### 5. Polymorphism

Payment methods can be changed dynamically without modifying the Order class.

```dart
PaymentMethod paymentMethod = BkashPayment();
```

## Project Structure

```text
lib/
 ├── main.dart
```

## Sample Output

```text
Laptop added to cart.
Mouse added to cart.
Keyboard added to cart.
Mobile added to cart.
Headphones added to cart.

-------- Order Details -------

Customer Name: Amit
Email: amit@example.com

----------- Products in Cart ----------

Laptop - 50000.0
Mouse - 1000.0
Keyboard - 500.0
Mobile - 30000.0
Headphones - 1400.0

Total Price: 82900.0
Payment Successful via Bkash: 82900.0

Admin Details:

Customer Name: Amit
Email: amit@example.com

Admin Name: Admin
Email: admin@gmail.com
```

## How to Run

1. Clone the repository

```bash
git clone <repository-url>
```

2. Navigate to the project folder

```bash
cd dart-oop-ecommerce-system
```

3. Run the application

```bash
dart run
```

## Author

Amit Deb Nath

Diploma Engineer (Telecommunication Technology)

Learning Dart & Flutter Development.
