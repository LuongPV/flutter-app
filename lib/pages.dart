import 'package:flutter_app/routes.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'forgot_password/bindings.dart';
import 'forgot_password/widget.dart';
import 'home/bindings.dart';
import 'home/widget.dart';
import 'login/bindings.dart';
import 'login/widget.dart';
import 'logout/widget.dart';

List<GetPage> getPages() {
  return [
    GetPage(
      name: ROUTE_HOME,
      page: () => HomeWidget(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: ROUTE_LOGIN,
      page: () => LoginWidget(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: ROUTE_LOGOUT,
      page: () => LogoutWidget(),
      bindings: [],
    ),
    GetPage(
      name: ROUTE_FORGOT_PASSWORD,
      page: () => ForgotPasswordWidget(),
      bindings: [
        ForgotPasswordBindings(),
      ],
    ),
  ];
}