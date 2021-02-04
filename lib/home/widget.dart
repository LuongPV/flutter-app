import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/home/data.dart';
import 'package:get/get.dart';

import '../login/widget.dart';

class HomeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home')
      ),
      body: Center(
        child: Column(
          children: [
            Text('This is Home Screen'),
            SizedBox(height: 20,),
            FlatButton(
              child: Text('Click to open Login'),
              onPressed: () => Get.to(LoginWidget(), arguments: HomeData(2, 'homedata 2'))
            )
          ]
        )
      ),
    );
  }

}