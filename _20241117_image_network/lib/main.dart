import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? super.key});
  final String imageUrl = "https://fuyuki-connect.net/wp-content/uploads/2024/11/icon_image.webp";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Network Image demo")),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                // ---------- NetworkImageの例 ----------
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                    ),
                  ),
                ),
                // ------------------------------------
                const Text("NetworkImage"),
              ],
            ),
            const SizedBox(width: 30),
            Column(
              children: [
                // ---------- Image.networkの例 ----------
                Container(
                  height: 100,
                  width: 100,
                  child: Image.network(imageUrl),
                ),
                // ------------------------------------
                const Text("Image.network"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
