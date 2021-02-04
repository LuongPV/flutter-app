import 'package:get/get.dart';

import '../logger.dart';
import '../routes.dart';

class HomeController extends GetxController {

  openLogin() async {
    var data = await Get.toNamed(ROUTE_LOGIN);
    Logger.d('Result from login = $data');
  }

}