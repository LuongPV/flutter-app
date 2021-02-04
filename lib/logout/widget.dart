import 'package:flutter/material.dart';
import 'package:flutter_app/forgot_password/widget.dart';
import 'package:flutter_app/login/controller.dart';
import 'package:flutter_app/login/data.dart';
import 'package:get/get.dart';

class LogoutWidget extends GetWidget<LoginController> {

  @override
  Widget build(BuildContext context) {
    final data = Get.arguments;
    print('data logout = $data');
    return Scaffold(
      appBar: AppBar(
          title: Text('Logout $data')
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text('This is logout, data = ${controller.count}')),
            SizedBox(height: 20,),
            FlatButton(
              child: Text('Open forgot password'),
              onPressed: () {
                ForgotPasswordWidget();
              }
            )
          ]
        ),
      ),
    );
  }

}