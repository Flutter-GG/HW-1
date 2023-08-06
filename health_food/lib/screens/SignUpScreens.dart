import 'package:flutter/material.dart';
import 'package:health_food/screens/Search.dart';
import 'package:health_food/widgets/Buttons.dart';
import 'package:health_food/widgets/textField.dart';
import 'package:health_food/widgets/textWidgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       iconTheme: const IconThemeData(color: Colors.black),
       backgroundColor: Colors.white,
       elevation: 0,
       title: const Center(
         child: TextWidget(
           text: "Create Account",
           textAlign: TextAlign.center,
           color: Colors.black, 
           Weight:FontWeight.bold, 
           fSize: 29,),
       ),

      ),
      body: SafeArea(
            child: Center(
                child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextWidget(
                          text: 'Username',
                        ),
                        const TextFieldWidget(
                            hintText: 'Username',
                            prefixIcon: Icons.account_circle_outlined),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextWidget(
                                  text: 'First Name',
                                ),
                                TextFieldWidget(
                                    width:MediaQuery.of(context).size.width / 2 - 25,
                                    hintText: 'First Name',
                                    prefixIcon: Icons.account_circle_outlined),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [const TextWidget(text: 'Last Name',
                                  
                                ),
                                TextFieldWidget(
                                    hintText: 'Last Name',
                                    width:MediaQuery.of(context).size.width / 2 -25,
                                    prefixIcon: Icons.account_circle_outlined),
                              ],
                            )
                          ],
                        ),
                        const TextWidget(text: "Email Address",fSize: 20,textAlign: TextAlign.left, ),
                        
                        const TextFieldWidget(hintText: 'Enter Email Address', prefixIcon: Icons.email_outlined, inputType:TextInputType.emailAddress,),
                        
                        const TextWidget(text: "Password",fSize: 20, textAlign: TextAlign.left, ),
                        
                        const TextFieldWidget(hintText: 'Enter Password', prefixIcon: Icons.lock_outline_rounded, ),
                        
                        const Buttons( secondPage: SearchScreen(), title: 'Continue',
                        )
                      ]),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      const TextWidget(
                        text: 'By continuing, you agree to the ',
                        fSize: 13,
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: const TextWidget(
                                text: 'Terms of Services',
                                Weight:FontWeight.bold,
                                color: Color(0Xff042628),
                                fSize: 13,
                              )),
                          const TextWidget(text: '&'),
                          TextButton(
                              onPressed: () {},
                              child: const TextWidget(
                                  text: 'Privacy Policy',
                                  Weight:FontWeight.bold,
                                  fSize: 13,
                                  color: Color(0Xff042628))),
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ))));
  }
}
