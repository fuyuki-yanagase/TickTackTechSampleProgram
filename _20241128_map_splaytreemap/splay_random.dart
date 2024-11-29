import "dart:collection";
import "dart:io";

void main() {
  int num = 10;
  // Mapと乱数の初期化
  SplayTreeMap<int, int> spMap = SplayTreeMap<int, int>();

  // [0,num)をランダムな順番に挿入
  List<int> shuffled = List.generate(num, (index) => index);
  shuffled.shuffle();
  for (int i = 0; i < num; ++i) spMap[shuffled[i]] = i;

  // 各keyとvalueに対して繰り返し
  spMap.forEach((key, value) {
    stdout.write("${key} ");
  });
}
