import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: mainpage01(),
  ));
}

class mainpage01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(),
                  image: const DecorationImage(
                    image: AssetImage("assets/image/chill.png"),
                  ),
                ),
              ),
              title: const Text("ProfileName"),
              subtitle: const Text("Location:"),
              trailing: IconButton(
                  alignment: Alignment.topRight,
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert)),
            ),
            Container(
              height: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/dq.png"))),
            ),
            ListTile(
              leading: const Text("Are you Intrested...!!",style: TextStyle(fontStyle: FontStyle.italic),),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.favorite_border_rounded)),
            ),
          ],
        ),
      ),
    );
  }
}
