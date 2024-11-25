import "package:flutter/material.dart";

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
          blurRadius: 7,
          offset: const Offset(0, 3), // 水平方向と垂直方向のずれ
        ),
      ],
    ),
  );
}

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
          offset: const Offset(3, 3),
        ),
        BoxShadow(
          color: Colors.blue.withOpacity(0.3),
          spreadRadius: -1,
          blurRadius: 10,
          offset: const Offset(-3, -3),
        ),
      ],
    ),
  );
}

class InnerShadow extends StatelessWidget {
  const InnerShadow({Key? super.key});
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: InnerShadowPainter(),
      child: Container(
        width: 100,
        height: 100,
        color: Colors.white,
      ),
    );
  }
}

class InnerShadowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = RadialGradient(
        colors: [
          Colors.black.withOpacity(0.2),
          Colors.transparent,
        ],
        stops: const [0.7, 1.0],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

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
          offset: Offset(0, 5),
        ),
      ],
    ),
  );
}

// 四辺
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
