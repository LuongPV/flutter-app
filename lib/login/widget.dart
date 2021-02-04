import 'package:flutter/material.dart';
import 'package:flutter_app/login/data.dart';
import 'package:get/get.dart';

import 'controller.dart';

class LoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: GetBuilder<LoginController>(
          builder: (controller) =>
              Obx(() => Text('Login count = ${controller.count}')),
          init: LoginController(),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            GetX<LoginController>(
              builder: (controller) =>
                  Text('This is Login, count = ${controller.count}'),
              init: LoginController(),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              child: Text('Increase count'),
              onPressed: () {
                final controller = Get.find<LoginController>();
                controller.increase();
              },
            ),
            FlatButton(
              child: Text('Open Logout'),
              onPressed: () {
                Get.toNamed('/logout', arguments: LoginData(69, 'login69'));
              },
            ),
            FlatButton(
              onPressed: () => Get.back(result: LoginData(70, 'login70')),
              child: Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
