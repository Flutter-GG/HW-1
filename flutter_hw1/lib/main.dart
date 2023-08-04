import "package:flutter/material.dart";
import "package:flutter_hw1/custom_widgets/app_bar_widget.dart";
import "package:flutter_hw1/custom_widgets/card_widget.dart";
import "package:flutter_hw1/custom_widgets/buttons_widget.dart";
import 'package:flutter_hw1/custom_widgets/category_widget.dart';
import "package:flutter_hw1/custom_widgets/recie_type_widget.dart";
import "package:flutter_hw1/custom_widgets/texts_widget.dart";
import "package:flutter_hw1/pages/create_account_page.dart";
import "package:flutter_hw1/pages/login_page.dart";
import "package:flutter_hw1/pages/main_page.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
// ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => MainPage(),
//                       ),
//                     );
//                   },
//                   child: Text('data'))