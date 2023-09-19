import 'dart:ui';

import 'package:custom_ui/abstract/widget.dart';
import 'package:custom_ui/constants/app_constants.dart';
import 'package:custom_ui/helper/gesture_producer.dart';
import 'package:custom_ui/helper/sizings.dart';

void runCustomApp(Widget widget) {
  window.onBeginFrame = BaseApp(widget).beginFrame;
  window.scheduleFrame();
}

class BaseApp {
  Widget? widget;

  BaseApp(this.widget) {
    GestureProducer().startListener();

    GestureProducer().gestureData.stream.listen((event) {
      gestureEvent(event);
      window.scheduleFrame();
    });
  }

  gestureEvent(PointerDataPacket packet) {
    bool isScrolling = false;
    bool isTapping = false;

    for (final PointerData data in packet.data) {
      if (data.change == PointerChange.move) {
        isScrolling = true;
      } else if (data.change == PointerChange.down) {
        isTapping = true;
      } else if (data.change == PointerChange.up) {
        if (isTapping) {
          // It's a tap event
          print("Tap");
          // Handle your tap logic here
        }
        isScrolling = false;
        isTapping = false;
      }

      if (isScrolling) {
        // Accumulate the scroll delta
        AppConstants().accumulatedScrollDelta -= data.physicalDeltaY * 0.5;

        AppConstants().scrollPosition += AppConstants().accumulatedScrollDelta;

        // Reset the accumulated scroll delta to handle future scroll events
        AppConstants().accumulatedScrollDelta = 0.0;
      }
    }
  }

  void beginFrame(Duration duration) {
    render();
  }

  void render() {
    final pixelRatio = window.devicePixelRatio;
    Size size = window.physicalSize / pixelRatio;
    final physicalBounds = Offset.zero & size * pixelRatio;

    final recorder = PictureRecorder();
    final canvas = Canvas(recorder, physicalBounds);
    canvas.scale(pixelRatio, pixelRatio);

    final paint = Paint()..color = const Color(0xffffffff);
    canvas.drawRect(
        Rect.fromLTRB(0, 0, SizeQuery().size.width, SizeQuery().size.height),
        paint);

    Widget? temp = widget;

    if (temp != null) {
      temp.initWidget(size, temp.child, canvas);
      temp.drawWidget();
      temp.hitTest();
    }

    final picture = recorder.endRecording();
    final sceneBuilder = SceneBuilder()
      ..pushClipRect(physicalBounds)
      ..addPicture(Offset.zero, picture)
      ..pop();
    window.render(sceneBuilder.build());
  }
}
