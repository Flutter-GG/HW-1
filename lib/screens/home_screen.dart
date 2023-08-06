import 'package:flutter/material.dart';
import 'package:foodapp/button/button.dart';

import 'login_screen.dart';


class HomeScreen extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
  backgroundColor: const Color(0xff70b9bf),
  body: Column(
    mainAxisAlignment: 
    MainAxisAlignment.end,
    children: [
      Expanded( 
      flex:1,
       child:Image.asset(
        'assets/images/fc5acd0b-be4c-4755-932a-45e48baaa62b.jpg',
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
        ),
      ),
      Expanded(
        flex: 0,
        child: Container(
          width: 400,
          height: 270,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(30),
            color: Colors.white,
             ),
        child:  Column(
          children: [
            const SizedBox(
              height:50,
            ),
            const Text(
              'Let\'s cooking',
              style: TextStyle(
                fontFamily:'Rubik',
                fontSize:25,
                fontWeight:FontWeight.bold),
            ),
            const SizedBox(
              height:15 ,
            ),
            const Text('Cooking based on the food rtecipse you \n find and the food you love',
            style: TextStyle(
              fontSize:17,
              fontFamily:'Rubik',
              color:Colors.grey),
              textAlign: 
            TextAlign.center,),

             const SizedBox(
              height:15 ,
            ),
            ElevatedButton(
                style: buttonPrimary,
                 onPressed:() {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return LoginScreen();
                  }));
                 }, 
                 child: const Text('Get Started',
                 style: TextStyle(
                  fontFamily:'Rubik',
                  fontWeight:FontWeight.bold,
                  fontSize:15 ),
            ),
          ),
        ]       
       )
      ),
     ),
    ]
   ),
  );
 }
}
