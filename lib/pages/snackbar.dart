// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Learn extends StatelessWidget {
  const Learn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Get.snackbar(
                'Hello World!',
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              ),
              child: Container(
                alignment: Alignment.center,
                color: Colors.green,
                width: 380,
                height: 60,
                child: Text('Show SnackBar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () => Get.defaultDialog(
                  title: "Welcome to Flutter Dev'S",
                  middleText:
                      "FlutterDevs is a protruding flutter app development company with "
                      "an extensive in-house team of 30+ seasoned professionals who know "
                      "exactly what you need to strengthen your business across various dimensions",
                  backgroundColor: Colors.teal,
                  titleStyle: TextStyle(color: Colors.white),
                  middleTextStyle: TextStyle(color: Colors.white),
                  radius: 30),
              child: Container(
                alignment: Alignment.center,
                color: Colors.blue,
                width: 380,
                height: 60,
                child: Text('Show Dialog',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Get.bottomSheet(
                  Container(
                      height: 150,
                      color: Colors.greenAccent,
                      child: Column(
                        children: [
                          Text('Hii 1', textScaleFactor: 2),
                          Text('Hii 2', textScaleFactor: 2),
                          Text('Hii 3', textScaleFactor: 2),
                          Text('Hii 4', textScaleFactor: 2),
                        ],
                      )),
                  barrierColor: Colors.red[50],
                  isDismissible: false,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                      side: BorderSide(width: 5, color: Colors.black)),
                  enableDrag: false,
                );
              },
              child: Container(
                alignment: Alignment.center,
                color: Color.fromARGB(255, 0, 21, 57),
                width: 380,
                height: 60,
                child: Text('Show Bottom Sheet',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () => Get.back(),
              child: Text('Go back', style: TextStyle(fontSize: 20)),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.grey,
                minimumSize: Size(380, 60),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
