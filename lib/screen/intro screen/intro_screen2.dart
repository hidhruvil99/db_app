import 'package:db_app/screen/login%20screen/l_s_screen.dart';
import 'package:flutter/material.dart';


class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/intro_image2.png"),
            const Padding(
              padding: EdgeInsets.all(1.0),
              child: Text(
                "The best results and Your satisfacionts is our priority",
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LSScreen()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff7210ff),
                  minimumSize: const Size(370, 50)),
              child: Text(
                "Next",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
