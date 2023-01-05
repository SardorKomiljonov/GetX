import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/pages/getbuilder.dart';
import 'package:learn_getx/pages/obx.dart';

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
      home: HomePage(),
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/learn', page: () => Learn()),
        GetPage(name: '/navigation', page: () => Navigation()),
        GetPage(name: '/thirdpage', page: () => ThirdPage()),
        GetPage(name: '/fourth', page: () => FourthPage()),
      ],
    );
  }
}
