import 'package:flutter/material.dart';
import 'package:flutter_app/app_bindings.dart';
import 'package:flutter_app/pages.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

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
      getPages: getPages(),
    );
  }
}
