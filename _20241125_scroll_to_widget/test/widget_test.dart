// // This is a basic Flutter widget test.
// //
// // To perform an interaction with a widget in your test, use the WidgetTester
// // utility in the flutter_test package. For example, you can send tap and scroll
// // gestures. You can also use WidgetTester to find child widgets in the widget
// // tree, read text, and verify that the values of widget properties are correct.

// import 'package:flutter/material.dart';

// class ScrollToWidgetExample extends StatefulWidget {
//   const ScrollToWidgetExample({Key? super.key});

//   @override
//   State<ScrollToWidgetExample> createState() => ScrollToWidgetView();
// }

// class ScrollToWidgetView extends State<ScrollToWidgetExample> {
//   /// スクロールしたいリストに付けるkey
//   final List<GlobalKey> _listKeys = [];

//   /// スクロールしたいリストに描画するウィジェット
//   final List<Widget> _listItems = [];

//   /// スクロールを制御するコントローラー
//   final ScrollController _controller = ScrollController();

//   @override
//   void initState() {
//     super.initState();

//     // リストアイテムを用意
//     for (int i = 0; i <= 50; ++i) {
//       // アイテム1個ずつkeyを割り当てる
//       var key = GlobalKey();
//       this._listItems.add(ListItem(key: key, text: "Item${i}"));
//       this._listKeys.add(key);
//     }
//   }
// }
