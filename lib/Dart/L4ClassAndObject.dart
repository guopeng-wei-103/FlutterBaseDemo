//
// L4ClassAndObject.dart
// FlutterBaseDemo
//
// Create by Lynn on 2025/8/2.
// Copyright © 2025. All rights reserved.
//
class L4ClassAndObject {

  // Properties

  // Instance
  L4ClassAndObject() {
    var student1 = Student(name: "Lynn");
    student1.printInfo();

    var student2 = Student(name: "Lynn", score: 98);
    student2.printInfo();
  }

  // Other methods
}

class Animal {
  String name = "";

  Animal(this.name);

  Animal.Pig() : name = "Pig";

  bark() {}
}

class Dog extends Animal {
  Dog(super.name);

  @override
  void bark() {
    print("汪汪汪 咬你");
  }
}

class Student {
  var name = "";
  var score = 0;

  Student({required this.name, this.score = 0});

  void printInfo() {
    if (score > 0) {
      print("My name is ${name}, score is ${score}.");
    } else {
      print("My name is ${name}, have not got the score.");
    }
  }

  bool isPassed() {
    return score >= 60;
  }
}
