import 'dart:ui';

import 'package:custom_ui/custom_widgets/column.dart';
import 'package:custom_ui/custom_widgets/component.dart';
import 'package:custom_ui/custom_widgets/padding.dart';
import 'package:custom_ui/custom_widgets/text.dart';
import 'package:custom_ui/helper/run_app.dart';
import 'package:custom_ui/helper/sizings.dart';
import 'package:custom_ui/nested_widget/app_bar.dart';
import 'package:custom_ui/nested_widget/home_page.dart';

void main() {
  runCustomApp(HomePage().build());
}
