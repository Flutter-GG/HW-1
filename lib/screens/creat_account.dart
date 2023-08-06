import 'package:flutter/material.dart';
import 'package:hw1_alawashiz/screens/home_screen.dart';
import 'package:hw1_alawashiz/screens/search_screen.dart';
import 'package:hw1_alawashiz/widgets/app_bar_widget.dart';
import 'package:hw1_alawashiz/widgets/button_widget.dart';
import 'package:hw1_alawashiz/widgets/text_field_widget.dart';
import 'package:hw1_alawashiz/widgets/text_widget.dart';

class CreatAccount extends StatelessWidget {
  const CreatAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          false, // to avoid problem when typing in a keyboard
      appBar: AppBarWidget("Creat Account"),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            children: [
              TextFieldWidget(
                lable: "User name",
                hint: "User name",
                preIcon: Icon(Icons.person_2),
              ),
              Row(
                children: [
                  Flexible(
                    child: TextFieldWidget(
                      lable: "First name",
                      hint: "First name",
                      preIcon: Icon(Icons.person_2),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Flexible(
                    child: TextFieldWidget(
                      lable: "Last name",
                      hint: "Last name",
                      preIcon: Icon(Icons.person_2),
                    ),
                  ),
                ],
              ),
              TextFieldWidget(
                lable: "Email adress",
                hint: "Enter Email adress",
                preIcon: Icon(Icons.person_2),
              ),
              TextFieldWidget(
                lable: "Password",
                hint: "enter Password",
                preIcon: Icon(Icons.person_2),
              ),
              ButtonWidget(
                text: "Continue",
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchScreen()));
                },
              ),
              SizedBox(height: 20,),
              TextWidget(text: "By continue you agree to the",color: Color(0xff042628),),
              ButtonWidget(text: "Terms of Services & Privacy Policy",isTextButton: true, size: 13,onPress: (){},fgColor: Color(0xff042628),),
            ],
          ),
        ),
      ),
    );
  }
}
