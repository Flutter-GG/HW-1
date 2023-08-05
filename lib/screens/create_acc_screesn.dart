import 'package:flutter/material.dart';
import 'package:lets_cooking/screens/recipes_screen.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_textfiled.dart';

class CreateAccScreen extends StatelessWidget {
  const CreateAccScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize( // Need to be checked
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(title: "Create Account"),
        ),


        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                CustomTextFiled(
                   filedTitle: CustomText(
                      title: "Username", align: TextAlign.left,
                      fontSize: 18, fontWeight: FontWeight.bold,
                    ),
                    hintText: "Enter your username",
                    prefixIcon: Icons.person_2_outlined,
                  ),
        
                SizedBox(height: 25,),
        
                Row(
                  children: [
                    Flexible(
                      child: CustomTextFiled(
                                     filedTitle: CustomText(
                        title: "First Name", align: TextAlign.left,
                        fontSize: 18, fontWeight: FontWeight.bold,
                      ),
                      hintText: "First name",
                      prefixIcon: Icons.person_2_outlined,
                                    ),
                    ),
        
                    SizedBox(width: 10,),
        
                    Flexible(
                      child: CustomTextFiled(
                                     filedTitle: CustomText(
                        title: "Last Name", align: TextAlign.left,
                        fontSize: 18, fontWeight: FontWeight.bold,
                      ),
                      hintText: "Last name",
                      prefixIcon: Icons.person_2_outlined,
                                    ),
                    ),
        
                  ],
                ),
        
                SizedBox(height: 25,),
        
                ////////////Email & Password///////////////
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
                  title: "Continue", buttonColor: 0xff04232a,
                  fontSize: 17, borderRadius: 15,
                  screen: RecipesScreen(),
                ),
        
                SizedBox(height: 25,),
        
                CustomText(
                    title: "By continuing, you agree to the", align: TextAlign.left,
                    fontSize: 16, 
                  ),
        
                CustomText(
                  title: "Terms of Services & Privacy Policy", align: TextAlign.left,
                  fontSize: 16, fontWeight: FontWeight.bold,
                ),
        
              ],
            ),
          ),
        ),
    );
  }
}