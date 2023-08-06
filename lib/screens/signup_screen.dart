import 'package:flutter/material.dart';
import 'package:foodapp/button/button.dart';


class SignScreen extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      backgroundColor: const Color.fromARGB(177, 255, 255, 255),
      elevation: 0,
      title: const Text('Create Account',
      style: TextStyle(color: Colors.black)
      ),
    ) ,
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top:15,left:15),
          child: Text('Username',
          style: TextStyle(
            fontFamily:'Rubik',
            fontSize: 15),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: TextField(
           decoration: InputDecoration(
            hintText: 'Username',
            prefixIcon: const Icon(Icons.person_outline_outlined),
            border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(15),
            ),
           ), 
          ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child:Row(
              children: [
                Text('First Name'),
                SizedBox(width: 120,),
                Text('Last Name')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: TextField(
           decoration: InputDecoration(
            hintText: 'First Name',
            prefixIcon: const Icon(Icons.person_outline_outlined),
            border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(15),
            ),
           ), 
          ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
                child: TextField(
           decoration: InputDecoration(
            hintText: 'Last Name',
            prefixIcon: const Icon(Icons.person_outline_outlined),
            border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(15),
            ),
           ), 
          ),
          ),
            ]
            )
          ),
          const Padding(
          padding: EdgeInsets.only(top:15,left:15),
          child: Text('Email Adress',
          style: TextStyle(
            fontFamily:'Rubik',
            fontSize: 15),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(13),
          child: TextField(
           decoration: InputDecoration(
            hintText: 'Enter Email Address',
            prefixIcon: const Icon(Icons.email_outlined),
            border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(15),
            ),
           ), 
          ),
          ),   
          const Padding(
          padding: EdgeInsets.only(top:7,left:15),
          child: Text('Password',
          style: TextStyle(
            fontFamily:'Rubik',
            fontSize: 15),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(13),
          child: TextField(
           decoration: InputDecoration(
            hintText: 'Enter Password',
            prefixIcon: const Icon(Icons.lock_outline),
            suffixIcon: const Icon(Icons.visibility_outlined),
            border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(15),
            ),
           ), 
          ),
          ),      
          Padding(
            padding: const EdgeInsets.only(left:35,top:15),
            child: ElevatedButton(
                  style: buttonPrimary,
                   onPressed:() {}, 
                   child: const Text('Continue',
                   style: TextStyle(
                    fontFamily:'Rubik',
                    fontWeight:FontWeight.bold,
                    fontSize:15 ),
              ),
            ),
          ),
          const SizedBox(
            height:30,
          ),
          const Center(
            child: Text(
              'By continunig, you agree to the',),
              ),
               const Center(
            child: Text(
              'Terms of Services & Praivsy Policy',
              style:TextStyle(
                fontWeight:FontWeight.bold )),
              ),
      ]
    )
   );
  }
}