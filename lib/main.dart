import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app_bindings.dart';
import 'package:flutter_app/pages.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  var localeUS = Locale('en', 'US');
  runApp(EasyLocalization(
    supportedLocales: [
      Locale('vi', 'VN'),
      localeUS,
    ],
    path: 'assets/translations',
    fallbackLocale: localeUS,
    useOnlyLangCode: true,
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
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
