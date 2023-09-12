import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CSlider(),
  ));
}
class CSlider extends StatelessWidget { 
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(items:
        List.generate(10, (index) => 
         Card(
          color: Colors.black,
          child: Center(
          child: Image.asset("assets/image/dq.png"),
          ),
        )),
        // Container(
        //   decoration: const BoxDecoration(
        //     image: DecorationImage(image: AssetImage("assets/image/dq.png")),
        //     )),
        //     Container(
        //   decoration: const BoxDecoration(
        //     image: DecorationImage(image: AssetImage("assets/image/dq.png")),
        //     )),
        //     Container(
        //   decoration: const BoxDecoration(
        //     image: DecorationImage(image: AssetImage("assets/image/dq.png")),
        //     )),
        //     Container(
        //   decoration: const BoxDecoration(
        //     image: DecorationImage(image: AssetImage("assets/image/dq.png")),
        //     )),
        //     Container(
        //   decoration: const BoxDecoration(
        //     image: DecorationImage(image: AssetImage("assets/image/dq.png")),
        //     )),
        //     Container(
        //   decoration: const BoxDecoration(
        //     image: DecorationImage(image: AssetImage("assets/image/dq.png")),
        //     )),
        //     Container(
        //   decoration: const BoxDecoration(
        //     image: DecorationImage(image: AssetImage("assets/image/dq.png")),
        //     )),
        //     Container(
        //   decoration: const BoxDecoration(
        //     image: DecorationImage(image: AssetImage("assets/image/dq.png")),
        //     )),
        //     Container(
        //   decoration: const BoxDecoration(
        //     image: DecorationImage(image: AssetImage("assets/image/dq.png")),
        //     )),
        //     Container(
        //   decoration: const BoxDecoration(
        //     image: DecorationImage(image: AssetImage("assets/image/dq.png")),
        //     )),
       options: CarouselOptions(
        height: 400,
        aspectRatio: 16/9,
        viewportFraction: 0.6,
        initialPage: 0,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 2),
        autoPlayCurve: Curves.linear,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      )),
    );
  }
}
