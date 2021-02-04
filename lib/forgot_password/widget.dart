import 'package:flutter/material.dart';
import 'package:flutter_app/login/controller.dart';
import 'package:get/get.dart';

class ForgotPasswordWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            children: [
              GetBuilder<LoginController>(builder: (controller) => Text('This is forgot password, count = ${controller.count}')),
              SizedBox(height: 20,),
              GetX<LoginController>(builder: (controller) => Text('This is forgot password2, count = ${controller.count}'))
            ]
        )
      )
    );
  }

}