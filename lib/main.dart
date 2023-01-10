import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/controllers/controllerBindings.dart';
import 'package:learn_getx/pages/getbuilder.dart';
import 'package:learn_getx/pages/json_holder.dart';
import 'package:learn_getx/pages/obx.dart';

import 'apis.dart';
import 'homepage.dart';
import 'pages/navigation.dart';
import 'pages/snackbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBindings(),
      home: HomePage(),
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/learn', page: () => Learn()),
        GetPage(name: '/navigation', page: () => Navigation()),
        GetPage(name: '/thirdpage', page: () => ThirdPage()),
        GetPage(name: '/fourth', page: () => FourthPage()),
        GetPage(name: '/fifth', page: () => Apis()),
        GetPage(name: '/six', page: () => JsonHolder()),
      ],
    );
  }
}
