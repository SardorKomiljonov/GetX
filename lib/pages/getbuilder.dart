// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:learn_getx/controllers/countController.dart';

class ThirdPage extends StatelessWidget {
  ThirdPage({super.key});

  CountController controller = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<CountController>(builder: (controller) {
            return Text('Count value is ${controller.count}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ));
          }),
          SizedBox(
            height: 20,
          ),
          OutlinedButton(
            // onPressed: () => controller.incrementCounter(),
            onPressed: () => Get.find<CountController>().incrementCounter(),
            child: Text(
              'Increment the value',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.black,
              minimumSize: Size(360, 60),
            ),
          ),
        ],
      ),
    ));
  }
}
