import 'package:get/get.dart';
import 'package:learn_getx/controllers/controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<Controller>(Controller());
  }
}
