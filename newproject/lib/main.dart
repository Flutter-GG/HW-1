import 'package:flutter/material.dart';
import 'package:newproject/Signin.dart';
import 'package:newproject/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Login());
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 35, 34, 34),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(205, 54, 226, 242),
        elevation: 5,
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            TextField(
              decoration: InputDecoration(
                labelText: 'Gmail',
                prefixIcon: Icon(Icons.email),
                labelStyle: const TextStyle(
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.password),
                suffixIcon: Icon(Icons.visibility),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 33),
            //push
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => find()));
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(205, 54, 226, 242),
                  textStyle: TextStyle(fontSize: 20),
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 50,
                    50,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100))),
            ),
            SizedBox(height: 33),
            Padding(
              padding: const EdgeInsets.only(top: 350),

              //to push
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Signin()));
                  },
                  child: Text('Sign in'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(205, 54, 226, 242),
                      textStyle: const TextStyle(fontSize: 20),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width - 50, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)))),
            )
          ],
        ),
      ),
    );
  }
}
