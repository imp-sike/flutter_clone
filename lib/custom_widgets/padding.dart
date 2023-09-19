import 'dart:ui';

import 'package:custom_ui/abstract/widget.dart';

/// [EdgeInsets] alternative
class SpacingMeasure {
  double left = 0;
  double right = 0;
  double top = 0;
  double bottom = 0;

  SpacingMeasure({
    this.left = 0,
    this.bottom = 0,
    this.right = 0,
    this.top = 0,
  });

  factory SpacingMeasure.all(double padding) => SpacingMeasure(
        left: padding,
        bottom: padding,
        right: padding,
        top: padding,
      );
}

class PaddingComponent extends Widget {
  SpacingMeasure padding;

  PaddingComponent({
    super.child,
    super.key,
    required this.padding,
  });

  @override
  void initWidget(Size size, Widget? child, Canvas canvas) {
    super.initWidget(size, child, canvas);

    super.size = const Size(double.maxFinite, double.maxFinite);
  }

  @override
  void drawWidget() {
    vOffset = padding.top;
    hOffset = padding.left;
    drawChildren();
  }

  @override
  void hitTest() {
    // TODO: implement hitTest
  }
}
