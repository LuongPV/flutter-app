import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../logger.dart';
import 'controller.dart';

class HomeWidget extends GetWidget<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          children: [
            Text('This is Home Screen'),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              child: Text('Click to open Login'),
              onPressed: () {
                controller.openLogin();
                Logger.d('Done open login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
