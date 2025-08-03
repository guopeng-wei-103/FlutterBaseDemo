//
// L3Collections.dart
// create by Lynn 2025/8/2
//

import 'dart:ffi';

class L3Collections {
  // Properties

  // Instance
  L3Collections() {
    // mapFunc();

    practice();
  }

  // Other methods

  // ================== MARK: - List ==================
  void listFunc() {
    var hotels = ["香格里拉", "万豪", "希尔顿"];

    hotels.add("洲际酒店");

    for (var hotel in hotels) {
      if (hotel.contains("万豪")) {
        print("有万豪酒店 第${hotels.indexOf(hotel) + 1}个");
        break;
      } else {
        print("Index of ${hotels.indexOf(hotel)} is not belong to JW.");
      }
    }

    hotels.add("四季酒店建国路店");
    hotels.add("四季酒店大望路路店");
    hotels.add("四季酒店西直门店");

    hotels.forEach((hotel) {
      print("Hotel named: ${hotel}.");
    });

    List<String> tempHotels = hotels.toList();
    for (var hotel in tempHotels) {
      if (hotel.startsWith("四季")) {
        hotels.remove(hotel);
      }
    }
    print("After remove all “四季” ${hotels.toString()}");
    print("After remove all “四季” the copy list is ${tempHotels.toString()}");

    print("开始遍历并修改，看是否崩溃");
    // 开始遍历并修改，和其他语言一样，会崩溃
    for (var hotel in tempHotels) {
      if (hotel.startsWith("四季")) {
        // tempHotels.remove(hotel);
      }
    }
    print(tempHotels.toString());
  }

  // ================== MARK: - Map ==================
  mapFunc() {
    Map<String, Object> map = {"name": "Lynn", "age": 20, "isVip": true};
    print(map["name"]);

    map["name"] = "Elon";
    print('Your new name is ${map["name"]}');

    map.remove("name");
    print('Your new name is ${map["name"] == null ? "empty" : "not empty"}');
    print('Your user info contain ${map.keys}');

    map.clear();

    print('Your user info is ${map}');
  }

  // ================== MARK: - Set ==================

  void setFunc() {
    var set = {1, 0, 2, 3, 4, 5, 6};
    var set1 = {1, 0, 7, 8, 9};

    print(set1.intersection(set));
    print(set1.union(set));
    print(set1.difference(set));
  }

  // ================== MARK: - Set ==================

  void practice() {
    // 1\ 2
    myUniqueFilms();

    // 3
    const scoreInfo = {"English": 100, "Math": 95.60, "Japanese": 80};
    num averageScore = getAverageScore(scoreInfo: scoreInfo);
    print("Your average score of ${scoreInfo.length} subjects is ${averageScore.toStringAsFixed(2)}");

    // 4
    print("Same of set = ${getTheSameItemsBetweenSets(setA: {1, 2, 4, 5}, setB: {3, 4, 5, 8, 9})}");
  }

  /// 打印数组的元素，去重
  void myUniqueFilms() {
    const filmList = ["逃学威龙", "绝命毒师", "终结者", "绝命毒师", "阿发达", "终结者"];
    filmList.forEach((film) {
      print("My film contain ${film}");
    });

    Set<String> uniqueList = {};
    uniqueList.addAll(filmList);
    print(uniqueList.toList());
  }

  /// 获取平均成绩
  num getAverageScore({required Map<String, num> scoreInfo}) {
    if (scoreInfo.isEmpty) {
      return 0;
    }
    return scoreInfo.values.reduce((a, b) => a + b) / scoreInfo.length;
  }

  /// 集合交集
  Set<int> getTheSameItemsBetweenSets({required Set<int> setA, required Set<int> setB}) {
    return setA.intersection(setB);
  }
}
