import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:myapp/api%20integration/using%20dio/model/post_model.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../service/dio_service.dart';

class Post_Controller extends GetxController {
  RxList post = RxList();
  RxBool isLoading = true.obs;
  RxBool isListScrollDown = false.obs;
  RxBool isInternetConnection = false.obs;

  var url = "https://jsonplaceholder.typicode.com/notes";
  var itemController = ItemScrollController();

  CheckInternetConnection() async {
    isInternetConnection.value =
        await InternetConnectionChecker().hasConnection;
  }

  getposts() async {
    CheckInternetConnection();
    isLoading.value = true;
    var response = await DioService().getMethod(url);
    if (response.statusCode == 200) {
      response.data.forEach((element) {
        post.add(PostModel.fromJson(element));
      });
      isLoading.value = false;
    }
  }

  ScrolltoDown() {
    itemController.scrollTo(
        index: post.length - 8,
        duration: const Duration(
          seconds: 3,
        ),
        curve: Curves.linearToEaseOut);
  }

  ScrolltoUp() {
    itemController.scrollTo(
        index: 0,
        duration: const Duration(
          seconds: 3,
        ),
        curve: Curves.linearToEaseOut);
    isListScrollDown.value = false;
  }

  void onInit() {
    getposts();
    isInternetConnection();
    super.onInit();
  }
}
