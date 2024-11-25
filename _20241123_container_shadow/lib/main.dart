import 'package:flutter/material.dart';

void main() {
  runApp(const ShadowSample());
}

class ShadowSample extends StatelessWidget {
  const ShadowSample({Key? super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shadow Examples',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ShadowExamplesPage(),
    );
  }
}

class ShadowExamplesPage extends StatelessWidget {
  const ShadowExamplesPage({Key? super.key});
  Widget createSample(Widget sample, String text) {
    return Column(
      children: [
        sample,
        const SizedBox(height: 10),
        Text(text, style: TextStyle(fontSize: 16)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Flutter Shadow Examples')),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        margin: const EdgeInsets.only(top: 15),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          children: [
            createSample(simpleShadow(), "シンプルな影"),
            createSample(coloredShadow(), "色付きの影"),
            createSample(multipleShadow(), "複数の影"),
            createSample(customeEdgeShadows(), "四隅に影"),
          ],
        ),
      ),
    );
  }
}

/// ----------- シンプルな影 -----------
Widget simpleShadow() {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 5,
          offset: const Offset(5, 5), // 水平方向と垂直方向のずれ
        ),
      ],
    ),
  );
}

/// ----------- 色付きの影 -----------
Widget coloredShadow() {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.purple.withOpacity(0.4),
          blurRadius: 15,
          spreadRadius: 5,
          offset: const Offset(0, 5),
        ),
      ],
    ),
  );
}

/// ----------- 複数の影 -----------
Widget multipleShadow() {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.red.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(5, 5),
        ),
        BoxShadow(
          color: Colors.blue.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(-5, -5),
        ),
      ],
    ),
  );
}

/// ----------- 四隅に影 -----------
Widget customeEdgeShadows() {
  return Stack(
    children: [
      Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Container(
          height: 10,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
          ),
        ),
      ),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          height: 10,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
          ),
        ),
      ),
      Positioned(
        left: 0,
        top: 0,
        bottom: 0,
        child: Container(
          width: 10,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
          ),
        ),
      ),
      Positioned(
        right: 0,
        top: 0,
        bottom: 0,
        child: Container(
          width: 10,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
          ),
        ),
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.white,
      ),
    ],
  );
}
