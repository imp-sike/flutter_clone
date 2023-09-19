import 'dart:ui';

import 'package:custom_ui/abstract/widget.dart';

class Component extends Widget {
  double width = 100;
  double height = 100;
  Color color;

  Component({
    super.child,
    super.key,
    required this.height,
    required this.width,
    this.color = const Color(0xffffffff),
  });

  @override
  void initWidget(Size size, Widget? child, Canvas canvas) {
    super.initWidget(size, child, canvas);
    super.size = Size(width, height);
  }

  @override
  void drawWidget() {
    final paint = Paint()..color = color;
    canvas.drawRect(
      Rect.fromLTWH(hOffset, vOffset, size.width, size.height),
      paint,
    );

    drawChildren();
  }

  @override
  void hitTest() {
    print(key);
  }
}
