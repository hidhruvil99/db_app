import 'package:flutter/material.dart';

class Avtar extends StatelessWidget {
  const Avtar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 30,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/images/avtar.jpeg"),
        radius: 30,
      ),
    );
  }
}
