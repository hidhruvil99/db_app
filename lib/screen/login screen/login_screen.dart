import 'package:db_app/pages/home.dart';
import 'package:db_app/screen/login%20screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 40),
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    
                    child: const Center(
                      child: Text(
                        "Login To Your Account",
                        style: TextStyle(fontSize: 35, fontFamily: 'Inter'),
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'xyz@gmail.com',
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.mail),
                      border: OutlineInputBorder(
                         
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
                    onPressed: () async{

                     if (_formKey.currentState!.validate()) {
                try {
                  await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: _emailController.text,
                    password: _passwordController.text,
                  );
                  
                   Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>const HomePage()));
                } 
                on FirebaseAuthException catch (e) {
                  if (e.code == 'user-not-found') {
                        
                    print('please sign up first');
                    
                  } 
                  else if (e.code == 'wrong-password') {
                    
                    print('password is wrong');
                  }
                }
              }


                     
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff7210ff),
                        minimumSize: const Size(300, 50)),
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()));
                      }
                    },
                    child: const Text(
                      "Don’t have an account? Sign Up",
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
