import 'package:flutter/material.dart';
import 'package:health_food/screens/Search.dart';
import 'package:health_food/screens/SignUpScreens.dart';
import 'package:health_food/widgets/Buttons.dart';
import 'package:health_food/widgets/textField.dart';
import 'package:health_food/widgets/textWidgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
           text: "Login",
           textAlign: TextAlign.center,
           color: Colors.black, 
           Weight:FontWeight.bold, 
           fSize: 29,),
       ),

      ),
      body:  SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
            children: [
              const Expanded(
                flex: 1,
                child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   
                    TextWidget(text: "Email Address",fSize: 20,textAlign: TextAlign.left, ),
                   
                    TextFieldWidget(hintText: 'Enter Email Address', prefixIcon: Icons.email_outlined, inputType:TextInputType.emailAddress,),
                 
                    TextWidget(text: "Password",fSize: 20, textAlign: TextAlign.left, ),
                   
                    TextFieldWidget(hintText: 'Enter Password', prefixIcon: Icons.lock_outline_rounded, ),
                  
                    Buttons(secondPage: SearchScreen(), title: 'Login',
                    ),
                    
                    ]),),
                   Center(
                     child: TextButton(
                      onPressed: () {},
                      child: const TextWidget(
                        text: 'Forgot Password?',
                        Weight:FontWeight.bold,
                        color: Color(0Xff70B9BE),
                                   )),
                   ),
                
                    const Expanded(
                      flex: 1,
                      child: Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                        children: [Buttons(
                         title: "Sign Up", secondPage: SignUpScreen(),),
                  ])),
                
                
                  ],
                
              )
              
              
        
          ),
        )  
          
        );
  }
}