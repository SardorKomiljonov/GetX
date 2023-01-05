import 'package:get/get.dart';
import 'package:learn_getx/models/valueModel.dart';

class ValueController extends GetxController {
  final valueModel = ValueModel().obs;

  updateTheValues(String newValue1, String newValue2) {
    valueModel.update((model) {
      model!.value1 = newValue1;
      model.value2 = newValue2;
    });
  }
}
