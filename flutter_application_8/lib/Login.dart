import 'package:flutter/material.dart';
import 'package:flutter_application_8/Signup.dart';
import 'package:flutter_application_8/main.dart';
import 'package:flutter_application_8/myHome.dart';
import 'package:flutter_application_8/pages/home.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Login",
        ),
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
           leading: IconButton(icon: Icon(Icons.arrow_back), color:Colors.black,onPressed: () => {Navigator.pop(context)}, 
)
      ),
      body: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(5),
                child: const Text(
                  'Email Address',
                  style: TextStyle(fontSize: 13.5),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  labelText: 'Enter Email Address',

                ),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(5),
                child: const Text(
                  'Password',
                  style: TextStyle(fontSize: 13.5),
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password_rounded),
                  border: OutlineInputBorder(),
                  labelText: 'Enter Password',
                  
                  
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30,left:37,right:37,bottom:10),
              child: Column(
                children: [
                  ElevatedButton(
                   onPressed: () {
              Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => Home()),
              );
            },
                    child: Text("Login"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff042628),
                      fixedSize: Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 90),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.symmetric(),
                ),
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(2),
                child: const Text(
                  'Or Create new account',
                  style: TextStyle(fontSize: 13.5),
                )),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Column(
                children: [
                  ElevatedButton(
                                onPressed: () {
              Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => Signup()),
              );
            },
                    child: Text("Sign up"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff042628),
                      fixedSize: Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
