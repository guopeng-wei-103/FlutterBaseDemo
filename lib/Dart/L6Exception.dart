//
// L6Exception
// FlutterBaseDemo
//
// Create by Lynn on 2025/8/2.
// Copyright © 2025. All rights reserved.
//

class L6Exception {
  L6Exception() {
    assertTest("Not null");
    // assertTest(null);
  }

  void divide(int a, int b) {
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

  void assertTest(String? a) {
    assert(a != null, "不能为空");
    print(a);
  }

  void sortList() {
    List<int> nums = [3, 5, 3, 2, 4, 5];
    print(nums.toSet());
  }

  int parseInt(String str) {
    try {
      return int.parse(str);
    } catch (e) {
      print("ex ${e}");
      return -1;
    } finally {}
  }
}
