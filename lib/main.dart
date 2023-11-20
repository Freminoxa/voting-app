//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:voting_app/pages/camera_screen.dart';
import 'package:voting_app/pages/home_page.dart';
import 'package:voting_app/pages/login_page.dart';
import 'package:voting_app/pages/register_page.dart';
import 'package:voting_app/pages/verification_page.dart';
import 'package:voting_app/pages/vote_verification_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // if (kIsWeb) {
  //   await Firebase.initializeApp(
  //       options: FirebaseOptions(
  //           apiKey: "AIzaSyCG1oqTHHpiOC13zK7JT54zfwERPD4DDK4",
  //           appId: "1:810562575765:web:c0d68d1141c443a82e6a9c",
  //           messagingSenderId: "810562575765",
  //           projectId: "group3-f192a"));
  // }
  // await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    );
  }
}
