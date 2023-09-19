import 'dart:async';
import 'dart:ui';

class GestureProducer {
  // Private constructor
  GestureProducer._();

  // The single instance of MySingleton
  static final GestureProducer _instance = GestureProducer._();

  //
  StreamController<PointerDataPacket> gestureData =
      StreamController<PointerDataPacket>();

  // Factory constructor to provide access to the singleton instance
  factory GestureProducer() {
    return _instance;
  }

  void startListener() {
    // starts the listener for the gestures detection
    window.onPointerDataPacket = (PointerDataPacket packet) {
      gestureData.add(packet);
    };
  }
}
