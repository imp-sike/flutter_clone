import 'dart:ui';

import 'package:custom_ui/abstract/nested_widget.dart';
import 'package:custom_ui/abstract/widget.dart';
import 'package:custom_ui/custom_widgets/column.dart';
import 'package:custom_ui/custom_widgets/component.dart';
import 'package:custom_ui/custom_widgets/scrollable.dart';
import 'package:custom_ui/custom_widgets/text.dart';
import 'package:custom_ui/helper/sizings.dart';
import 'package:custom_ui/nested_widget/app_bar.dart';

class HomePage extends NestedWidget {
  @override
  Widget build() {
    return Component(
      height: SizeQuery().size.height,
      width: SizeQuery().size.width,
      color: const Color(0xffffffff),
      child: ScrollableComponent(
        child: ColumnComponent(
          children: [
            AppBar().build(),
            Component(
              height: 10,
              width: 10,
              color: const Color(0x00000000),
            ),
            Component(
              height: 100,
              width: SizeQuery().size.width,
              color: const Color(0xffe30000),
              child: TextComponent(
                "Hi World",
                key: "second circle",
              ),
            ),
            Component(
              height: 250,
              width: 250,
              color: const Color(0xffa3e300),
              child: TextComponent(
                "Hi World I am the best biiy",
                key: "second circle",
              ),
            ),
            Component(
              height: 250,
              width: 250,
              color: const Color(0xff2a00e3),
              child: TextComponent(
                "Hi World",
                key: "second circle",
              ),
            ),
            Component(
              height: 250,
              width: 250,
              color: const Color(0xffe3ae00),
              child: TextComponent(
                "Hi World",
                key: "second circle",
              ),
            ),
            Component(
              height: 250,
              width: 250,
              color: const Color(0xffcc00e3),
              child: TextComponent(
                "Hi World",
                key: "second circle",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
