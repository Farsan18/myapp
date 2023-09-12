import 'package:flutter/material.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';

class DetailPageFashion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios_new_outlined,),
          onPressed: () => Navigator.of(context).pop() ),
        title: const Text("Product Details"),
        centerTitle: true,
        actions: const [
          Icon(Icons.favorite_border_rounded)
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(
                "")),
            ),
          ),
          const Card(elevation: 5,),
          ListTile(leading: const Text("Female Style"),
          trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.star_border_outlined)),),
          const Text("Light Brown Jacket",style: TextStyle(fontWeight: FontWeight.bold),),
          const ListTile(title: Text("Product Details"),
          subtitle: Text("Description......................."),),
          const Card(elevation: 5,),
          ListTile(
            leading: const Text("Select Size"),
            title: Row(children: [
              TextButton(onPressed: (){}, child: const Text('S')),
              TextButton(onPressed: (){}, child: const Text('M')),
              TextButton(onPressed: (){}, child: const Text('L')),
              TextButton(onPressed: (){}, child: const Text('XL')),
              TextButton(onPressed: (){}, child: const Text('XXL')),
              TextButton(onPressed: (){}, child: const Text('XXXL')),
            ],),
            subtitle: Column(children: [
              const Text("Select Color : "),
              Row(
                children: [
                  MaterialColorPicker(
                    onColorChange: (Color color){
                    },
                      selectedColor: Colors.red,
                      colors: const [
                        Colors.red,
                        Colors.yellow,
                        Colors.blue,
                        Colors.lightGreen,
                      ],
                  ),
                ],
              )
            ],),
          ),
          ListTile(
            leading: const Text("Total Prize"),
            subtitle: const Text("\$83.97"),
            trailing: ElevatedButton(onPressed: (){}, child: const Text("Add to cart") ),
          )
        ],
      ),
    );
  }

}