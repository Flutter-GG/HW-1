import 'package:flutter/material.dart';
import 'package:newproject/search.dart';

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent, // Make the AppBar transparent
          elevation: 0, // Remove the elevation shadow
          flexibleSpace: Container(
            //img for the page from internet
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://i.pinimg.com/originals/ff/9e/db/ff9edbe3ea72b3ba7a18e86e6478e86c.jpg',
                ),
                fit: BoxFit.cover, // Set the image to cover the entire AppBar
              ),
            ),
          ),
          title: const Text('Create Account'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://i.pinimg.com/originals/ff/9e/db/ff9edbe3ea72b3ba7a18e86e6478e86c.jpg',
              ),
              fit: BoxFit.cover, // Set the image to cover the entire background
            ),
          ),
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),

              //fist textf for name++++++++++++++++++

              TextField(
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  labelStyle: TextStyle(color: Colors.blueAccent),
                  hintText: 'Enter your Full Name',
                  // icon

                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20),

              //second textf for Email ++++++++++++++++++

              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 218, 228, 233),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              //thierd textf for pass ++++++++++++++++++

              TextField(
                decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Colors.white),
              ),
              const SizedBox(height: 33),

              //Button for login ++++++++++++++++++

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => find()));
                },
                child: const Text('Continue'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(205, 54, 226, 242),
                  textStyle: const TextStyle(fontSize: 20),
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 50,
                    50,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              const SizedBox(height: 33),

              //Button for sign in ++++++++++++++++++
            ],
          ),
        ),
      ),
    );
  }
}
