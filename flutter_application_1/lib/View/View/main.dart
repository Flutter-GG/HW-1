import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/View/buttonSheet.dart';
import 'package:flutter_application_1/View/View/creatAccount.dart';
import 'package:flutter_application_1/View/View/login.dart';
import 'package:flutter_application_1/View/View/onboarding.dart';
import 'package:flutter_application_1/View/View/search.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: creatAccount(),
    );
  }
}
