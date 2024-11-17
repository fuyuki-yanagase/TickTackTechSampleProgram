import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // デバッグバナーを非表示
      home: Scaffold(
        appBar: AppBar(
          title: const Align(alignment: Alignment.center, child: Text("Google Fonts Demo")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text(
                "フォント使用例です (GoogleFonts)",
                style: GoogleFonts.notoSansJp(fontSize: 20),
              ),
              const SizedBox(height: 16),
              const Text(
                "フォント使用例です (標準)",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 40),
              Text(
                "GoogleFontsを使えば標準の中華フォントも直せます",
                style: GoogleFonts.notoSansJp(fontSize: 14),
              ),
              const SizedBox(height: 10),
              Text(
                "直認化細 (GoogleFonts)",
                style: GoogleFonts.notoSansJp(fontSize: 20),
              ),
              const SizedBox(height: 16),
              const Text(
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
