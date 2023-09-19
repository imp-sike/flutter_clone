import 'dart:ui';

abstract class Widget {
  Size size = const Size(0, 0);
  Size parentSize = const Size(0, 0);
  Widget? child;
  String key;
  late Canvas canvas;
  double hOffset = 0;
  double vOffset = 0;

  Widget({this.child, this.key = "sample"});

  void initWidget(Size size, Widget? child, Canvas canvas) {
    parentSize = size;
    this.child = child;
    this.canvas = canvas;
  }

  @override
  String toString() {
    return runtimeType.toString();
  }

  void drawWidget();
  void hitTest();

  void drawChildren() {
    if (child != null) {
      child!.initWidget(size, child!.child, canvas);
      child!.hOffset = hOffset;
      child!.vOffset = vOffset;
      child!.drawWidget();
      child!.hitTest();
    }
  }
}
