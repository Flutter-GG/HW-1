import 'package:flutter/material.dart';
import 'package:foodapp/button/button.dart';
import 'package:foodapp/screens/search_screen.dart';
import 'package:foodapp/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
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
          backgroundColor: Color.fromARGB(177, 255, 255, 255),
          elevation: 0,
          title: const Text('Login', style: TextStyle(color: Colors.black)),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: Text(
                    'Email Adress',
                    style: TextStyle(fontFamily: 'Rubik', fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Email Address',
                      prefixIcon: Icon(Icons.mail_outline),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 7, left: 20),
                  child: Text(
                    'Password',
                    style: TextStyle(fontFamily: 'Rubik', fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: Icon(Icons.visibility_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, top: 15),
                  child: ElevatedButton(
                    style: buttonPrimary,
                    onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return SearchScreen();
                  }));
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        fontFamily: 'Rubik', fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 250),
                const Center(
                  child: Text(
                    'Or Create nem accouent',
                    style: TextStyle(fontFamily: 'Rubik', color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, top: 15),
                  child: ElevatedButton(
                    style: buttonPrimary,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return SignScreen();
                  }));
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                ),
              ]),
        ));
  }
}
