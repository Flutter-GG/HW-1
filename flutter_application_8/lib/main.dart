import 'package:flutter/material.dart';

import 'Login.dart';
import 'myHome.dart';

void main() => runApp(MaterialApp( title: "App", home: MYhome(), ));

class RubaApp extends StatelessWidget {
  const RubaApp({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        backgroundColor: Colors.white,

        body: SafeArea(
            bottom: false,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    "assets/images/cook2.png",
                    width: 410,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 410,
                    decoration: BoxDecoration(
                      color: Color(0xffF8F8F8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Let's Cook Togather!",
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 10),
                              child: Text(
                                "Cook based on the food recipes that you find and the food the you like",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              
                             onPressed: () {
              Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => Login()),
              );
            },
            
                              child: Text("Get Started"),
                              
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff042628),
                                fixedSize: Size(300, 50),
                                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                        ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
      );
    
  }
}
