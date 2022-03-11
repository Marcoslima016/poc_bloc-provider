import 'package:flutter/material.dart';

class ButtonsPreferences {
  String text;
  TextPreferences textPreferences;
  Color bgColor;
  double width;
  double height;
  double borderRadius;
  Function onClick;
  ButtonsPreferences({
    this.text,
    this.bgColor,
    this.borderRadius,
    this.onClick,
    this.width,
    this.height,
    this.textPreferences,
  }) {
    if (text == null) text = "button";
    if (textPreferences == null) textPreferences = TextPreferences();
  }
}

class TextPreferences {
  double size;
  Color textColor;
  TextPreferences({
    this.size,
    this.textColor,
  }) {
    if (size == null) size = 18;
    if (textColor == null) textColor = Colors.white;
  }
}
