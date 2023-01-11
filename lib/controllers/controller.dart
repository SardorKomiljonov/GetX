import 'dart:convert';

import 'package:get/get.dart';

import '../models/albumModel.dart';

import 'package:http/http.dart' as http;

class Controller extends GetxController {
  var photoList = <AlbumModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchAlbumData();
  }

  Future<void> fetchAlbumData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

    if (response.statusCode == 200) {
      AlbumModel _albumModel = AlbumModel.fromJson(jsonDecode(response.body));

      photoList.add(AlbumModel(
        title: _albumModel.title,
        body: _albumModel.body,
        userId: _albumModel.userId,
        id: _albumModel.id,
      ));

      isLoading.value = true;
    } else {
      Get.snackbar('Error!!!${response.statusCode.toString()}',
          'Controller.dart ${response.reasonPhrase.toString()}');
    }
  }
}
