import 'package:flutter_app/login/controller.dart';
import 'package:get/get.dart';

class LoginBindings extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }

}