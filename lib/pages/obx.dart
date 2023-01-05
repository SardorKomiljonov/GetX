import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../controllers/valueController.dart';

class FourthPage extends StatelessWidget {
  FourthPage({super.key});

  ValueController controller = Get.put(ValueController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetX<ValueController>(
                  init: ValueController(),
                  builder: (_) {
                    return Text(
                      '${_.valueModel.value.value1}',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    );
                  }),
              Obx(() => Text(
                    '${Get.find<ValueController>().valueModel.value.value2}',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  )),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () => Get.find<ValueController>()
                    .updateTheValues('Komiljonov Sardor', 'Sardor Komiljonov'),
                child: Text(
                  'Change the value',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blue,
                  minimumSize: Size(360, 70),
                ),
              ),
            ],
          )),
    );
  }
}
