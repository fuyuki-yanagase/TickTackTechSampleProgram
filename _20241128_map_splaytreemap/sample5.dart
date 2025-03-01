import "dart:math";

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
  Random random = Random();

  // [0,num)にランダムな値を用意
  for (int i = 0; i < num; ++i) map[i] = random.nextInt(num);

  // 時間計測開始
  Stopwatch stopwatch = Stopwatch()..start();

  // [0,num)の範囲で100万回ランダムアクセス
  for (int i = 0; i < num; i++) {
    int key = random.nextInt(num);
    // int? value = map[key];
    map[key];
  }

  // 時間計測終了
  stopwatch.stop();

  print("書き込みにかかった時間: ${stopwatch.elapsedMilliseconds}ミリ秒");
  return stopwatch.elapsedMilliseconds;
}
