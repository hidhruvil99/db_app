import 'package:flutter/material.dart';
import 'category_list_item copy.dart';
class HomePage1 extends StatelessWidget {
  final List _photos = [
    Data(image: "assets/images/s1.png", text: "Cleaning"),
    Data(image: "assets/images/s2.png", text: "Repairing"),
    Data(image: "assets/images/s3.png", text: "Painting"),
    Data(image: "assets/images/s4.png", text: "Laundary"),
    Data(image: "assets/images/s5.png", text: "Laundary"),
    Data(image: "assets/images/s6.png", text: "Laundary"),
    Data(image: "assets/images/s7.png", text: "Laundary"),
    Data(image: "assets/images/s8.png", text: "Laundary"),
    Data(image: "assets/images/s9.png", text: "Laundary"),
    Data(image: "assets/images/s10.png", text: "Laundary"),
    Data(image: "assets/images/s11.png", text: "Laundary"),
  ];

  HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Services App"),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 25),
          child: GridView.builder(
            itemCount: _photos.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 0, mainAxisSpacing: 30),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage(_photos[index].image),
                            fit: BoxFit.none)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(_photos[index].text)
                ],
              );
            },
          ),
        ));
  }
}
