import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have Successfully\nNavigated to a new screen.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () => Get.back(),
              child: Text('Go back', style: TextStyle(fontSize: 20)),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.grey,
                minimumSize: Size(310, 60),
              ),
            ),
            Text(Get.arguments.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
    );
  }
}
