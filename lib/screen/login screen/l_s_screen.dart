import 'package:db_app/screen/login%20screen/login_screen.dart';
import 'package:db_app/screen/login%20screen/signup_screen.dart';
import 'package:flutter/material.dart';


class LSScreen extends StatelessWidget {
  const LSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/images/Lsscreen_image.png"),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff7210ff),
                      minimumSize: const Size(300, 50)),
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff7210ff),
                      minimumSize: const Size(300, 50)),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
