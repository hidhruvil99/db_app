import 'package:db_app/screen/login%20screen/l_s_screen.dart';
import 'package:db_app/screen/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';


void main () async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
 );
  runApp(
    MaterialApp(
       routes: {
    '/login': (context) => const LSScreen(),
  },
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
