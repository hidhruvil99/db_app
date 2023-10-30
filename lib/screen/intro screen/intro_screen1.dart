import 'package:db_app/screen/intro%20screen/intro_screen2.dart';
import 'package:flutter/material.dart';


class IntroScren1 extends StatelessWidget {
  const IntroScren1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/into_image1.png"),
            const Text(
              "We provide professional service at a friendly price",
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IntroScreen2()));
              },
              child: Text(
                "Next",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff7210ff), minimumSize: Size(370, 50)),
            )
          ],
        ),
      ),
    );
  }
}
