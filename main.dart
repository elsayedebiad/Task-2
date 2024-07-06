void main() {
  Book Learn = Book();
  Learn.title = "Learn";
  Learn.author = "Youssef salah";
  Learn.number_page = 500;

  Novel Data = Novel();
  Data.genre = "computer science";

  print('Title  : ${Learn.title}');
  print('Author name : ${Learn.author}');
  print('Pages unmber : ${Learn.number_page}');
  Data.display();

  Circle circle = Circle(radius: 5);
  Rectangle rectangle = Rectangle(wight: 10, height: 5);

  PrintArea(circle);
  PrintArea(rectangle);

  Product cars = Product(name: "Car", price: 100000);
  User ahmed = User(name: "Ahmed", email: "ahmedebed@gmail.com");

  print('product name is : ${cars.name}');
  print('product price is : ${cars.price}');

  print('user name is : ${ahmed.name}');
  print('user email is : ${ahmed.email}');

  BankAccount ahemd = BankAccount(5000);
  print(ahemd.balance);

  try {
    ahemd.withdraw(6000);
    print(ahemd.balance);
  } catch (e) {
    print("error");
  }
}

class Book {
  String? title;
  String? author;
  int? number_page;
}

class Novel extends Book {
  String? genre;

  void display() {
    print("Genre : $genre");
  }
}

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;
  double Bay = 3.14159;
  Circle({required this.radius});

  @override
  double area() => Bay * radius * radius;
}

class Rectangle extends Shape {
  double wight;
  double height;

  Rectangle({required this.wight, required this.height});

  @override
  double area() => wight * height;
}

void PrintArea(Shape shape) {
  print('The Shape is  : ${shape.area()}');
}

interface class Serializable {
  String toJson();
}

class User implements Serializable {
  String name;
  String email;

  User({required this.name, required this.email});
  @override
  String toJson() => '{"name" = "$name","Email"= "$email"}';
}

class Product extends Serializable {
  String name;
  double price;

  Product({required this.name, required this.price});
  @override
  String toJson() => '{"name" = "$name" , "Price" = "$price"}';
}

class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposit : $amount. New balance : $balance");
  }

  void withdraw(double amount) {
    if (balance < amount) {
      print("Your balance is insufficient");
    } else {
      balance -= amount;
      print("Withdraw : $amount. New balance : $balance");
    }
  }
}
