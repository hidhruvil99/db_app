import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class EmailAndPasswordTextField extends StatefulWidget {
  const EmailAndPasswordTextField({super.key});

  @override
  State<EmailAndPasswordTextField> createState() =>
      _EmailAndPasswordTextFieldState();
}

class _EmailAndPasswordTextFieldState extends State<EmailAndPasswordTextField> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: 'Email'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email address.';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(labelText: 'Password'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password.';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                try {
                  await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: _emailController.text,
                    password: _passwordController.text,
                  );
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'user-not-found') {
                    // User does not exist.
                  } else if (e.code == 'wrong-password') {
                    // Wrong password.
                  }
                }
              }
            },
            child: const Text('Sign In'),
          ),
        ],
      ),
    );
  }
}
