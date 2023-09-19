import 'dart:ui';

import 'package:custom_ui/abstract/widget.dart';

class ColumnComponent extends Widget {
  List<Widget> children;
  double currentHeightOffset = 0;

  ColumnComponent({required this.children});

  @override
  void drawWidget() {
    double vOffset = 0;
    for (Widget element in children) {
      element.initWidget(size, element.child, canvas);
      element.vOffset = vOffset;
      // element.vOffset = vOffset;
      element.drawWidget();
      element.hitTest();
      vOffset = vOffset + element.size.height;
    }
  }

  @override
  void hitTest() {}
}
