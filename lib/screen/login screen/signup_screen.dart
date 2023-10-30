import 'package:db_app/screen/login%20screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    // color: Colors.red,
                    child: const Center(
                      child: Text(
                        "Create Your Account",
                        style: TextStyle(fontSize: 35, fontFamily: 'Inter'),
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: 'Your Name',
                      labelText: 'Name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          // borderSide: BorderSide(color: Colors.black, width: 20),
                          ),
                    ),
                      validator: (value) {
                         if (value == null || value.isEmpty) {
                           return 'Please enter your name.';
                           }
                          return null;
                          },

                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'Xyz@gmail.com',
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.mail),
                      border: OutlineInputBorder(
                          // borderSide: BorderSide(color: Colors.black, width: 20),
                          ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        hintText: '******',
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility_off),
                        border: OutlineInputBorder()),
                        validator: (value) {
                      if (value!.length < 6) {
                        return 'Enter at least six characters';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () async {



                         if (_formKey.currentState!.validate()) {
                        try {
                      await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _emailController.text,
                          password: _passwordController.text);
                  // Add the name to the user profile.
                  await FirebaseAuth.instance.currentUser!
                      .updateProfile(displayName: _nameController.text);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    // Password is too weak.
                  } else if (e.code == 'email-already-in-use') {
                    // Email already in use.
                  }
                }
              }



                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const LoginScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff7210ff),
                        minimumSize: const Size(300, 50)),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      }
                    },
                    child: const Text(
                      "Already have an account? Login",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
