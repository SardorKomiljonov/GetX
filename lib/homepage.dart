// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('GetX'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Container(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Get.toNamed('/learn'),
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.blueGrey,
                      height: 120,
                      width: 180,
                      child: Text(
                        'SnackBar,\nDialog and\nBottom Sheet',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.toNamed('/navigation',
                        arguments: 'Hello from the HomePage!!!'),
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.cyan,
                      height: 120,
                      width: 180,
                      child: Text(
                        'Navigation,\nSend data to\nother screen',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Get.toNamed('/thirdpage'),
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.indigo,
                      height: 120,
                      width: 180,
                      child: Text(
                        'State\nManagement\nGet Builder',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.toNamed('/fourth'),
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.teal,
                      height: 120,
                      width: 180,
                      child: Text(
                        'State\nManagement\nGetX & Obx',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Get.toNamed('/fifth'),
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.green,
                      height: 120,
                      width: 180,
                      child: Text(
                        'Apis',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () => Get.toNamed('/six'),
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.deepOrange,
                      height: 120,
                      width: 180,
                      child: Text(
                        'Json\nPlaceHolder\nGetX & Obx',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
