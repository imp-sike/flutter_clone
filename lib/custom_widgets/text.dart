import 'dart:ui';

import 'package:flutter/material.dart' as rendering
    show TextPainter, TextStyle, TextSpan, Colors;
import '../abstract/widget.dart';

class TextComponent extends Widget {
  String text;

  TextComponent(
    this.text, {
    super.key,
  }) : super(child: null);

  @override
  void drawWidget() {
    // Create a TextPainter object to style and position the text
    var text = rendering.TextSpan(
      text: this.text, // Text to display
      style: const rendering.TextStyle(
        fontSize: 20.0, // Font size
        color: rendering.Colors.white, // Text color
      ),
    );

    final textPainter = rendering.TextPainter(
      text: text,
      textDirection: TextDirection.ltr,
    );

    // Layout and position the text on the canvas
    textPainter.layout(minWidth: 0, maxWidth: parentSize.width);

    // Draw the text on the canvas
    textPainter.paint(canvas, Offset(hOffset, vOffset));
  }

  @override
  void hitTest() {
    print("text");
  }
}
