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
      name: '/',
      page: () => HomeWidget(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: '/login',
      page: () => LoginWidget(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: '/logout',
      page: () => LogoutWidget(),
      bindings: [],
    ),
    GetPage(
      name: '/forgot_password',
      page: () => ForgotPasswordWidget(),
      bindings: [
        ForgotPasswordBindings(),
      ],
    ),
  ];
}