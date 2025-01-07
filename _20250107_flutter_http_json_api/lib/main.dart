import 'package:http/http.dart' as http;
import "package:flutter/material.dart";
import 'dart:convert';
import "dart:math";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ApiExample(),
    );
  }
}

/// StateFulWidget
class ApiExample extends StatefulWidget {
  const ApiExample({Key? super.key});

  @override
  State<ApiExample> createState() => ApiExampleView();
}

/// View
class ApiExampleView extends State<ApiExample> {
  /// 受信したテキストデータ
  String getText = "ボタンをタップしてデータを受信";

  /// 登録したデータ番号
  int? postId;

  /// 受信ボタン
  Widget createGetButton() {
    return ElevatedButton(
      onPressed: () async {
        var ret = await getApi();
        this.getText = ret.toString();
        if (mounted) setState(() {});
      },
      child: const Text(
        "データ受信",
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  /// 送信ボタン
  Widget createPostButton() {
    return ElevatedButton(
      onPressed: () async {
        var ret = await postApi();
        this.postId = ret["id"];
      },
      child: const Text(
        "データ送信",
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          // 受信データ表示
          Container(
            width: 500,
            constraints: const BoxConstraints(minHeight: 100),
            alignment: Alignment.center,
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  getText,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),

          // データ受信ボタン
          this.createGetButton(),
          const SizedBox(height: 10),

          // データ送信ボタン
          this.createPostButton(),
        ],
      ),
    );
  }
}

/// GET : サーバからデータを受信する
Future<Map<String, dynamic>> getApi() async {
  // クエリパラメータ(今回は必要無いですが例として適当なデータ)
  Map<String, String> body = {"name": "山田太郎", "age": "20"};
  // 接続先
  Uri uri = Uri.https("jsonplaceholder.typicode.com", "posts/${Random().nextInt(9) + 1}", body);

  // ヘッダーの設定
  Map<String, String> headers = {'content-type': 'application/json'};

  // GET通信
  http.Response resp = await http.get(uri, headers: headers);

  print(resp.body);

  // 受信したデータはJSON形式なのでデコードする
  return jsonDecode(resp.body);
}

/// POST : サーバにデータを送信する
Future<Map<String, dynamic>> postApi() async {
  // 接続先
  Uri uri = Uri.https("jsonplaceholder.typicode.com", "posts");
  // ヘッダーの設定
  Map<String, String> headers = {'content-type': 'application/json'};
  // 送信したいデータをbodyに書き込む
  Map<String, String> body = {
    "名前": "山田太郎",
    "年齢": "20",
    "性別": "男性",
    "趣味": "読書",
  };

  // bodyをJSONにエンコードしてPOST通信
  http.Response resp = await http.post(uri, headers: headers, body: jsonEncode(body));

  print(resp.body);

  // 送信結果もJSON形式で帰って来るのでデコードする
  var json = jsonDecode(resp.body);
  return json;
}
