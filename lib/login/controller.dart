import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class LoginController extends GetxController {
  var count = 0.obs;

  void increase() {
    count.value++;
  }

}