import 'package:flutter/material.dart';

void main() {
  runApp(ConstFinalSample(name: "太郎"));
}

class ConstFinalSample extends StatefulWidget {
  const ConstFinalSample({Key? super.key, required String this.name});

  final String name;

  @override
  ConstWidgetExample createState() => ConstWidgetExample();
}

class ConstWidgetExample extends State<ConstFinalSample> {
  static const Widget staticConst = Text(
    "これはConst Widgetです。実行中は変更できません。",
    style: TextStyle(fontSize: 16),
  );

  late final Widget lateFinal;

  @override
  void initState() {
    super.initState();

    this.lateFinal = Text("これはFinal Widgetです。ウィジェット生成時にオプションを与えて変更できます。name:${widget.name}", style: const TextStyle(fontSize: 16));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Const Widget"), // 定数ウィジェットを使用
        ),
        body: Column(
          children: [
            staticConst,
            SizedBox(height: 30),
            lateFinal,
          ],
        ),
      ),
    );
  }
}
