import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/View/creatAccount.dart';
import 'package:flutter_application_1/View/View/login.dart';
import 'package:flutter_application_1/View/compunent/buttonClose.dart';
import 'package:flutter_application_1/View/compunent/buttonContainer.dart';
import 'package:flutter_application_1/View/compunent/buttonsRow.dart';
import 'package:flutter_application_1/View/compunent/textButtonTittle.dart';

import '../compunent/buttonNavigate.dart';

class Buttonsheet extends StatelessWidget {
  const Buttonsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Filter",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            textButtonTittle(
              title: "Category",
              padding: 300,
            ),
            SizedBox(
              height: 15,
            ),
            buttonsRow(),
            SizedBox(
              height: 15,
            ),
            textButtonTittle(
              title: "Recipe Type",
              padding: 270,
            ),
            buttonsRow(),
            buttonsRow(),
            SizedBox(
              height: 30,
            ),
            NavigationButton(
              title: "Apply Filter",
              colorButton: Color(0xff80b6bd),
              TextcolorButton: Colors.white,
              ViewName: login(),
            ),
            SizedBox(
              height: 10,
            ),
            NavigationButton(
              title: "clear filter",
              colorButton: Colors.white,
              TextcolorButton: Color(0xff80b6bd),
              ViewName: creatAccount(),
            )
          ],
        ),
      ),
    );
  }
}
