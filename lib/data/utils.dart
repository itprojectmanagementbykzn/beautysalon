import 'package:flutter/material.dart';

/**
 * Develope By Starlight Studio
 * Theme
 * You can't invoke this class
 */
///App Theme
abstract class AppTheme {
  ///Background Color for [Scaffold],[AppBar],[ElevatedButton],...
  static const scaffoldBackground = Color(0xff4E295B);

  ///
  static const buttonColor = Color.fromRGBO(255, 128, 111, 1);

  ///Background Color for [Container],[Card],...
  static const backgroundColor = Color(0xFFFFFFFF);
}

/**
 * Develope By Starlight Studio
 * Extension
 */
///App Extension
extension AppExt on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  double get topSafe => MediaQuery.of(this).viewInsets.top;

  bool overScroll(OverscrollIndicatorNotification e) {
    e.disallowIndicator();
    return false;
  }
}
