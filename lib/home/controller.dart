import 'package:get/get.dart';

import '../logger.dart';

class HomeController extends GetxController {

  openLogin() async {
    var data = await Get.toNamed('/login');
    Logger.d('Result from login = $data');
  }

}