import 'dart:ui';

import 'package:custom_ui/abstract/nested_widget.dart';
import 'package:custom_ui/abstract/widget.dart';
import 'package:custom_ui/custom_widgets/padding.dart';
import 'package:custom_ui/custom_widgets/text.dart';
import 'package:custom_ui/helper/sizings.dart';

import '../custom_widgets/component.dart';

class AppBar extends NestedWidget {
  @override
  Widget build() {
    return Component(
      width: SizeQuery().size.width,
      height: 56 + 36,
      color: const Color(0xff0a99e5),
      child: PaddingComponent(
        padding: SpacingMeasure(left: 20, top: 50),
        child: TextComponent(
          "My Awesome News",
          key: "second circle",
        ),
      ),
    );
  }
}
