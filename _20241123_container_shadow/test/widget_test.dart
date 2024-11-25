// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';

var simple = Container(
  width: 100,
  height: 100,
  decoration: BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 5,
        offset: const Offset(5, 5),
      ),
    ],
  ),
);

/// ----------- 色付きの影 -----------
var color = Container(
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

/// ----------- 複数の影 -----------
var multiple = Container(
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

/// ----------- 四隅に影 -----------
var edge = Stack(
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
