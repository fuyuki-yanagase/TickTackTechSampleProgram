import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String imagePath = "assets/icon_image.webp";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Asset Image demo")),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                // ---------- AssetImageの例 ----------
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                    ),
                  ),
                ),
                // ------------------------------------
                Text("AssetImage"),
              ],
            ),
            const SizedBox(width: 30),
            Column(
              children: [
                // ---------- Image.assetの例 ----------
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset(imagePath),
                ),
                // ------------------------------------
                Text("Image.asset"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
