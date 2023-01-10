import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:learn_getx/controllers/controller.dart';

class JsonHolder extends StatelessWidget {
  const JsonHolder({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<Controller>();

    return Scaffold(
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('AlbumID: ${_controller.photoList[0].albumId}'),
            Text('ID: ${_controller.photoList[0].id}'),
            Text('Title: ${_controller.photoList[0].title}'),
            Image.network(
              _controller.photoList[0].thumbnailUlr,
            ),
          ],
        ),
      )),
    );
  }
}
