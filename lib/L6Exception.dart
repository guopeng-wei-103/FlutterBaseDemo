//
// L6Exception
// FlutterBaseDemo
//
// Create by Lynn on 2025/8/2.
// Copyright © 2025. All rights reserved.
//

class L6Exception {
  L6Exception() {
    devide(2, 0);
    devide(10, 3);
  }

  void devide(int a, int b) {
    try {
      var result = a ~/ b; // 整数除法（可能抛异常）
      print('结果: $result');
    } on FormatException catch (e) {
      print("FormatException: ${e.toString()}");
    } catch (e) {
      print("${e.toString()}");
    } finally {
      print("finally");
    }
  }
}
