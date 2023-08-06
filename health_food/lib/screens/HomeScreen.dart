import 'package:flutter/material.dart';
import 'package:health_food/screens/loginScreens.dart';
import 'package:health_food/widgets/Buttons.dart';
import 'package:health_food/widgets/textWidgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0Xff70B9BE),
      appBar: AppBar(
        backgroundColor:  const Color(0Xff70B9BE),
        elevation: 0,
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
             Expanded(
              flex:2,
              child: Image.asset('assets/images/background.jpg',
              width:MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              )),
             Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),
                  )
                  ),
           
              padding: const EdgeInsets.all(35),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                TextWidget(text: " Let's cooking ",
              color: Colors.black,
              fSize: 30, 
              Weight: FontWeight.bold,
              ),
            
              TextWidget(text: " Cooking based on the food recipes you find and the food you love ",
              color: Color.fromARGB(255, 156, 169, 169),
              fSize: 19,
              textAlign: TextAlign.center,),
              
              Buttons( 
               title: "Get Started", secondPage: LoginScreen(),),

              ],)
                
              ),
             
             )
          ],
        ),
      ),



    );
  }
}