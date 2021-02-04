import 'package:flutter/material.dart';
import 'package:flutter_app/app_bindings.dart';
import 'package:flutter_app/forgot_password/bindings.dart';
import 'package:flutter_app/forgot_password/widget.dart';
import 'package:flutter_app/home/bindings.dart';
import 'package:flutter_app/home/widget.dart';
import 'package:flutter_app/login/bindings.dart';
import 'package:flutter_app/logout/widget.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'login/widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      enableLog: true,
      initialBinding: AppBindings(),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => HomeWidget(),
          binding: HomeBindings()
        ),
        GetPage(
          name: '/login',
          page: () => LoginWidget(),
          binding: LoginBindings()
        ),
        GetPage(
          name: '/logout',
          page: () => LogoutWidget(),
          bindings: []
        ),
        GetPage(
          name: '/forgot_password',
          page: () => ForgotPasswordWidget(),
          bindings: [
            ForgotPasswordBindings()
          ]
        )
      ]
    );
  }
}