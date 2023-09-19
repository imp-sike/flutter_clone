import 'dart:ui';

import 'package:custom_ui/abstract/widget.dart';
import 'package:custom_ui/helper/sizings.dart';

import '../constants/app_constants.dart';

class ScrollableComponent extends Widget {
  double scrollPosition = 0.0;
  // double accumulatedScrollDelta = 0.0; // Track accumulated scroll delta

  ScrollableComponent({super.child, super.key});

  @override
  void initWidget(Size size, Widget? child, Canvas canvas) {
    super.initWidget(size, child, canvas);
  }

  @override
  void drawWidget() {
    // Create a scrollable container

    final scrollableRect = Rect.fromPoints(const Offset(0, 0),
        Offset(SizeQuery().size.width, SizeQuery().size.height));

    // Clip the canvas to the scrollable area
    canvas.clipRect(scrollableRect);

    if (AppConstants().scrollPosition < 0) {
      AppConstants().scrollPosition = 0;
    }
    // Translate the canvas by the scroll position
    canvas.translate(0, -AppConstants().scrollPosition);

    drawChildren();

    // Reset the canvas translation
    canvas.translate(0, AppConstants().scrollPosition);
  }

  @override
  void hitTest() {
    // TODO: implement hitTest
  }
}
