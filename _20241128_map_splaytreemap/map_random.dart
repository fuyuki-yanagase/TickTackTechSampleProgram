import "dart:io";

void main() {
  int num = 10;
  // Mapと乱数の初期化
  Map<int, int> map = {};

  // [0,num)をランダムな順番に挿入
  List<int> shuffled = List.generate(num, (index) => index);
  shuffled.shuffle();
  for (int i = 0; i < num; ++i) map[shuffled[i]] = i;

  // 各keyとvalueに対して繰り返し
  map.forEach((key, value) {
    stdout.write("${key} ");
  });
}
