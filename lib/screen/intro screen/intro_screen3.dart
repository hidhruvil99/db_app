import 'package:db_app/screen/login%20screen/l_s_screen.dart';
import 'package:flutter/material.dart';


class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/intro_image3.png"),
            const Text(
              "Lets make awesome changes to your home",
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LSScreen()));
              },
              child: Text(
                "Next",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff7210ff),
                  minimumSize: const Size(370, 50)),
            )
          ],
        ),
      ),
    );
  }
}
