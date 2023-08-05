import 'package:flutter/material.dart';
import 'package:lets_cooking/screens/recipes_screen.dart';
import 'package:lets_cooking/widgets/custom_text.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfiled.dart';
import 'create_acc_screesn.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: PreferredSize( // Need to be checked
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(title: "Log in"),
        ),

      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
      
                CustomTextFiled(
                 filedTitle: CustomText(
                    title: "Email Address", align: TextAlign.left,
                    fontSize: 18, fontWeight: FontWeight.bold,
                  ),
                  hintText: "Enter Email address",
                  prefixIcon: Icons.email_outlined,
                ),
      
                SizedBox(height: 25,),
      
      
                CustomTextFiled(
                 filedTitle: CustomText(
                    title: "Password", align: TextAlign.left,
                    fontSize: 18, fontWeight: FontWeight.bold,
                  ),
                  hintText: "Enter password",
                  prefixIcon: Icons.lock_outline,
                  suffixIcon: Icons.visibility_outlined,
                ),
                
                SizedBox(height: 25,),
      
                CustomButton(
                  title: "Log in", buttonColor: 0xff04232a,
                  fontSize: 17, borderRadius: 15,
                  screen: RecipesScreen(),
                ),
      
                SizedBox(height: 25,),
      
                CustomText(
                    title: "Forget password?", align: TextAlign.left,
                    fontSize: 16, fontWeight: FontWeight.bold,
                  ),
      
                Padding(
                  padding: EdgeInsets.only(top: 230),
                  child: Column(
                    children: [
                      CustomText(
                          title: "Or creat a new account",
                          fontSize: 16, textColor: Colors.grey,
                      ),
      
                      SizedBox(height: 10,),
                      CustomButton(
                        title: "Sign Up", buttonColor: 0xff04232a,
                        fontSize: 17, borderRadius: 15,
                        screen: CreateAccScreen(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}