# Flutter Clone - Very Very Minimal
Just wanted to see how the flutter framework uses the ```dart:ui``` exposed by Flutter Engine. I have used the depreciated ```ui.window``` throughout the codebase as I am not intending to create a new framework alternative to flutter.
This has its own component system unlike flutter Widget System.

Sample Code for the demo below can be written as:
```dart
// sample code for the demo app
void main() {
  runCustomApp(HomePage().build());
}


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

```

![Sample Demo](https://raw.githubusercontent.com/imp-sike/flutter_clone/main/ezgif-2-37847167c5.gif)


## What next?
I want following things added to this minimal framework:
1. Make the scrolling more better.
2. Currently padding is f* uped, will want to change.
3. The code base is entirely bruteforced, no any predefined architectural pattern is imposed. I won't work on this as this is completely hobby project.
4. I want to implement the ```ListView.buider()``` like feature. i.e. dynamically rendering the views thats under certain offset.
5. And More...
