import 'dart:ffi';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../controller/post_controller.dart';
import '../utils/colors.dart';

class HomeDio extends StatelessWidget {
  Post_Controller controller = Get.put(Post_Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgcolor,
      floatingActionButton: Obx(() =>
          controller.isInternetConnection.value ? buildFAB() : Container()),
          body: Obx(() => SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: controller.isInternetConnection.value?(controller.isLoading.value?
             loadAnimation():getData(): noInternet(context),),
          )),
    );
  }

  FloatingActionButton buildFAB() {
    return FloatingActionButton(
      onPressed: () {
        controller.isListScrollDown.value
            ? controller.ScrolltoUp()
            : controller.ScrolltoDown();
      },
      backgroundColor: MyColors.prcolor,
      child: FaIcon(controller.isListScrollDown.value
          ? FontAwesomeIcons.arrowUp
          : FontAwesomeIcons.arrowDown),
    );
  }
}

RefreshIndicator getData() {
  return RefreshIndicator(
    onRefresh: (){
      return controller.getposts();
    },
    child: ScrollablePositionedList.builder(
    itemScrollController: controller.itemController,
    physics: BouncingScrollPhysics(),
    itemCount: controller.post.length, itemBuilder: ((context, index) {
    return Card(
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
          ),
          child: Center(
            child: Text(controller.post[index].id.toString()),
          ),
        ),
        title: Text(controller.post[index].title.toString()),
      ),
    ),
  })), 
  );
}

Center loadAnimation() {
  return Center(
    child: SizedBox(
      width: 150,
      height: 150,
      child: Lottie.asset(""),
    ),
  );
}
