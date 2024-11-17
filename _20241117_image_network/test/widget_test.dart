// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';

// ---------- NetworkImageの例 ----------
var f = Container(
  height: 100,
  width: 100,
  decoration: BoxDecoration(
    image: DecorationImage(
      image: NetworkImage("<Your Image URL here>"),
    ),
  ),
);

// ---------- Image.networkの例 ----------
var g = Image.network("<Your Image URL here>");
