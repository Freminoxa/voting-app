import 'package:flutter/material.dart';
import 'package:voting_app/pages/home_page.dart';
import 'package:voting_app/pages/login_page.dart';
import 'package:voting_app/pages/register_page.dart';
import 'package:voting_app/pages/verification_page.dart';
import 'package:voting_app/pages/vote_verification_page.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VoteVerificationPage(
      ),
    );
  }
}