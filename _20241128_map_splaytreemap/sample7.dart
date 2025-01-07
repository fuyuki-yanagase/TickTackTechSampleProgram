void main() {
  List<int> result = [];
  for (int i = 0; i < 10; ++i) result.add(mapTest());

  print("平均時間: ${result.reduce((a, b) => a + b) / result.length}");
}

int mapTest() {
  // 書き込み回数
  int num = 1000000;

  // Mapと乱数の初期化
  Map<int, int> map = {};
  // Random random = Random();

  // [0,num)をランダムな順番に挿入
  List<int> shuffled = List.generate(num, (index) => index)..shuffle();
  for (int i = 0; i < num; ++i) map[shuffled[i]] = i;

  // 時間計測開始
  Stopwatch stopwatch = Stopwatch()..start();

  // keyの昇順にイテレーション
  List<int> keys = map.keys.toList()..sort();
  for (var key in keys) {
    // int? value = map[key];
    map[key];
  }

  // 時間計測終了
  stopwatch.stop();

  print("書き込みにかかった時間: ${stopwatch.elapsedMilliseconds}ミリ秒");
  return stopwatch.elapsedMilliseconds;
}
