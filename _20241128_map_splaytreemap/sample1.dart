void main() {
  Map<int, String> map = {1: "1番目", 5: "5番目", 57: "素数", 1729: "タクシー"};
  print("${map[1]}, ${map[1729]}"); // → 1番目, タクシー

  String? str = map[57]; // → 素数
  print(str);

  String? nullStr = map[333];
  print(nullStr); // → null
}
