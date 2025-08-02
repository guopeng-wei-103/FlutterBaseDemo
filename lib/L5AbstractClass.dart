//
// L5AbstractClass.dart
// FlutterBaseDemo
//
// Create by Lynn on 2025/8/2.
// Copyright © 2025. All rights reserved.
//

enum UserType {teacher, student, worker, farmer}

class L5AbstractClass {

  // Properties

  // Instance
  L5AbstractClass() {

  }

// Other methods
}

abstract class People {

  String region = "";

  void speak();

  void live() {
    print("live in ${region}");
  }
}

class Japanese extends People {
  @override
  speak() {
    print("I speak Japanese");
  }

}

abstract class CookeAble {
  void cooke();

  void findFood();
}

class Monkey implements CookeAble {
  @override
  void cooke() {
    print("I use stone to open nuts");
  }

  @override
  void findFood() {
    print("I find my food on the apple tree.");
  }

}


// 混入
// 定义第一个 mixin：日志能力
mixin Logger {
  void log(String message) {
    print('[LOG] $message');
  }
}

// 定义第二个 mixin：缓存能力
mixin Cacheable {
  final Map<String, String> _cache = {};

  void saveToCache(String key, String value) {
    _cache[key] = value;
    print('[CACHE] 保存：$key = $value');
  }

  String? readFromCache(String key) {
    return _cache[key];
  }
}

// 混入多个 mixin 的类
class DataService with Logger, Cacheable {
  void fetchData() {
    log('正在获取数据...');
    saveToCache('user', '国朋');
    var user = readFromCache('user');
    log('缓存中的用户：$user');
  }
}