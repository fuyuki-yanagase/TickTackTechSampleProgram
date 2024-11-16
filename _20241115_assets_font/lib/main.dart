import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // デバッグバナーを非表示
      home: Scaffold(
        appBar: AppBar(
          title: const Align(alignment: Alignment.center, child: Text("Asset Font Demo")),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Text(
                "フォント使用例です(noto)",
                style: TextStyle(
                  fontFamily: "noto",
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "フォント使用例です(標準)",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 40),
              Text(
                "notoを使えば標準の中華フォントも直せます",
                style: TextStyle(
                  fontFamily: "noto",
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "直認化細 (noto)",
                style: TextStyle(
                  fontFamily: "noto",
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "直認化細 (標準)",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
