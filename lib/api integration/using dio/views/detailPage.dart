import 'package:flutter/material.dart';

class DEtailPage extends StatelessWidget {  
  int index;
  DEtailPage({super.key, required this.index})

  Product_controller controller = Get.find<Product_Controller>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              controller.post[index].id.toString()
            ),
            Text(
              controller.post[index].title
            ),
            Text(
              controller.post[index].body
            )
          ],
        ),
      ),
    );
  }
}
