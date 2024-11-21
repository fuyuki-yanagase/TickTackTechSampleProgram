import 'package:flutter/material.dart';

void main() {
  runApp(const CustomCntainerCorner());
}

class CustomCntainerCorner extends StatelessWidget {
  const CustomCntainerCorner({Key? super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Custom Container Corners')),
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(children: [
                const Text("全体を丸く", style: TextStyle(fontSize: 20)),
                Container(
                  width: 150,
                  height: 150,
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ]),
              const SizedBox(width: 40),
              Column(
                children: [
                  const Text("左上と右下だけ", style: TextStyle(fontSize: 20)),
                  Container(
                    width: 150,
                    height: 150,
                    margin: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30), // 左上を丸く
                        topRight: Radius.circular(0), // 右上はそのまま
                        bottomLeft: Radius.circular(0), // 左下はそのまま
                        bottomRight: Radius.circular(30), // 右下を丸く
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
