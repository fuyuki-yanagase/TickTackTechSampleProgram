import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      title: "Flutter Shadow Examples",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ScrollToWidgetExample(),
    ),
  );
}

/// ---------- リストに描画するWidget ----------
class ListItem extends StatelessWidget {
  /// ---------- かならずKeyを受け取る ----------
  const ListItem({Key? super.key, required String this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 50,
        width: 300,
        child: Center(
          child: Text(
            this.text,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class ScrollToWidgetExample extends StatefulWidget {
  const ScrollToWidgetExample({Key? super.key});

  @override
  State<ScrollToWidgetExample> createState() => ScrollToWidgetView();
}

class ScrollToWidgetView extends State<ScrollToWidgetExample> {
  /// スクロールしたいリストに付けるkey
  final List<GlobalKey> _listKeys = [];

  /// スクロールしたいリストに描画するウィジェット
  final List<Widget> _listItems = [];

  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();

    // リストアイテムを用意
    for (int i = 0; i <= 50; ++i) {
      // アイテム1個ずつkeyを割り当てる
      var key = GlobalKey();
      this._listItems.add(ListItem(key: key, text: "Item${i}"));
      this._listKeys.add(key);
    }
  }

  /// ---------- 指定したウィジェットの位置までスクロール ----------
  void _scrollToTarget(GlobalKey targetKey) {
    final context = targetKey.currentContext;
    if (context == null) return;

    // ウィジェットのグローバル位置を取得
    final RenderObject? renderObject = context.findRenderObject();
    if (renderObject == null) return;

    // 対象ウィジェットが現在の画面から見てどこに描画されているか
    final RenderBox renderBox = renderObject as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero);

    // リストの現在のスクロール位置を取得
    final scrollOffset = this._controller.offset;

    // スクロール位置を計算
    final targetOffset = scrollOffset + offset.dy - 80; // 任意でオフセットを調整

    // 目的のスクロール位置までスクロールする
    this._controller.animateTo(
          targetOffset,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
  }

  /// ---------- スクロール用ボタン ----------
  Widget _scrollButton(int itemIndex) {
    return InkWell(
      onTap: () => this._scrollToTarget(this._listKeys[itemIndex]),
      child: SizedBox(
        height: 50,
        width: 100,
        child: Text(
          "${itemIndex}に移動",
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              this._scrollButton(5),
              this._scrollButton(20),
              this._scrollButton(50),
            ],
          ),
        ),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        thickness: 10,
        controller: this._controller,
        child: SingleChildScrollView(
          controller: this._controller,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: this._listItems,
          ),
        ),
      ),
    );
  }
}
