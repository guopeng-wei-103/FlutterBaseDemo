// L2Functions.dart
// weiguopeng 2025/8/2
//

class L2Functions {
  // Properties

  // Instance
  L2Functions() {

    print("L2Functions start --------- --------- ---------");

    print("3 + 2 = ${add(a: 2, b: 3)}");
    calculate(3, 2, multiply: true);
    calculate(3, 2, multiply: false);
  }

  // Other methods
  int add({required int a, int b = 0, String? c}) {
    print(c ?? "c 是 空的");
    return a + b;
  }

  calculate(int a, int b, {bool multiply = false}) {
    if (multiply) {
      print("a * b = ${a * b}");
    } else {
      print("a + b = ${a + b}");
    }
  }
}