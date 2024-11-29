import 'dart:collection';

void main() {
  Map<int, String> map = {1: "1番目", 5: "5番目", 57: "素数", 1729: "タクシー"};
  SplayTreeMap<int, String> spMap = SplayTreeMap.from(map);

  print("${spMap[1]}, ${spMap[1729]}"); // → 1番目, タクシー

  String? str = spMap[57]; // → 素数
  print(str);

  String? nullStr = spMap[333];
  print(nullStr); // → null
}
