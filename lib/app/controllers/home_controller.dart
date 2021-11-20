import 'dart:async';

import 'package:get/get.dart';

class HomeController extends GetxController {
  StreamController<int> selected = StreamController<int>();
  var data = Get.arguments;
  int fortuneItemValue=0;
}
