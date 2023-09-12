import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/api%20integration/using%20http%20and%20getx/controller/productController.dart';
import 'package:myapp/api%20integration/using%20http%20and%20getx/screens/Home/Widgets/ProductTile.dart';
import 'package:myapp/data%20passing/productList.dart';

class APIHomePage extends StatelessWidget {
  final ProductController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products from API"),
      ),
      body: SizedBox(
        child: Obx(() {
          if (ProductController.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return ProductTile(ProductController.productList[index]);
              },
              itemCount: ProductController.productList.length,
            );
          }
        }),
      ),
    );
  }
}
