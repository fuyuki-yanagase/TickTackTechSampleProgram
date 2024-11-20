import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // カスタムフォントをデフォルトに設定
        fontFamily: "noto",
      ),
      home: const FontExample(),
    );
  }
}

class FontExample extends StatelessWidget {
  const FontExample({Key? super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(alignment: Alignment.center, child: Text("Apply Font to All")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "標準の中華フォントも直せます",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 15),
            const Text(
              "直認化細 (カスタムフォント)",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            DefaultTextStyle(
              style: ThemeData.fallback().textTheme.bodyMedium!,
              child: const Text(
                "直認化細 (標準)",
                style: TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "fontFamilyを指定しなくてもカスタムフォントが適用されています",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
