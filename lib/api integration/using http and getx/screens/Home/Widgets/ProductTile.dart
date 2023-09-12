import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:myapp/api%20integration/using%20http%20and%20getx/model/productmodel.dart';
import 'package:myapp/data%20passing/dummy.dart';

class ProductTile extends StatelessWidget {
  final Productmodel products;
  ProductTile(this.products);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5)),
                child: CachedNetworkImage(
                  imageUrl: products.image!,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                products.title!,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("${products.rating?.rate!}")
            ],
          )
        ],
      ),
    );
  }
}
