import "dart:collection";
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
  SplayTreeMap<int, int> spMap = SplayTreeMap<int, int>();
  Random random = Random();

  // 時間計測開始
  Stopwatch stopwatch = Stopwatch()..start();

  // ランダムなkeyにランダムな値を100万回書き込む
  for (int i = 0; i < num; i++) {
    int key = random.nextInt(num);
    int value = random.nextInt(num);
    spMap[key] = value;
  }

  // 時間計測終了
  stopwatch.stop();

  print("書き込みにかかった時間: ${stopwatch.elapsedMilliseconds}ミリ秒");
  return stopwatch.elapsedMilliseconds;
}
