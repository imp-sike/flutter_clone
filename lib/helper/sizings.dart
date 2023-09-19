import 'dart:ui';

class SizeQuery {
  Size get size => window.physicalSize / window.devicePixelRatio;
}
