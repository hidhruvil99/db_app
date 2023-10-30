import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class Slider1 extends StatefulWidget {
  const Slider1({super.key});

  @override
  State<Slider1> createState() => _Slider1();
}

class _Slider1 extends State<Slider1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 150,
            width: double.infinity,
            child: AnotherCarousel(
              images: const [
                AssetImage('assets/images/3.jpg'),
                AssetImage('assets/images/1.jpg'),
                AssetImage('assets/images/2.jpg'),
                AssetImage('assets/images/4.jpg'),
                AssetImage('assets/images/5.jpg'),
              ],
              // dotSize: 0,
              showIndicator: false,
              borderRadius: true,
              radius: const Radius.circular(30),
            ),
          ),
        ],
      ),
    );
  }
}
  
