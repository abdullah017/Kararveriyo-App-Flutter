import 'package:get/get.dart';
import 'package:kararverio/app/controllers/option_controller.dart';

class AddOptionBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddOptionController>(() => AddOptionController());
    // Get.put<HomeController>(HomeController());
  }
}
