import 'package:flutter/material.dart';
import 'package:hw_1/View/Screens/search_page.dart';
import 'package:hw_1/View/Screens/sign_up.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
         title: const Text("Log in " , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 20, )),
         
        centerTitle:true ,
      ),
      
      body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            TextFormField(
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                              decoration:  InputDecoration(  border: OutlineInputBorder( borderRadius: BorderRadius.circular(15.0),),
                                prefixIcon: const Align(
                                  widthFactor: 1.0,
                                  heightFactor: 1.0,
                                  child: Icon(
                                    Icons.person,
                                  ),
                                ),
                              
                                labelText: 'Email Adress',
                                fillColor: Colors.black,
                              ),
                            ),
                            SizedBox(height: 9,),
                            TextField(
                              style: const TextStyle(
                                
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                              obscureText: passwordVisible,
                              
                              decoration: InputDecoration(
                                
                                border: OutlineInputBorder( borderRadius: BorderRadius.circular(15.0),),
                                prefixIcon: const Align(
                                  widthFactor: 1.0,
                                  heightFactor: 1.0,
                                  child: Icon(
                                    Icons.lock,
                                  ),
                                ),
                                labelText: "Password",
                                suffixIcon: IconButton(
                                  icon: Icon(passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(
                                      () {
                                        passwordVisible = !passwordVisible;
                                      },
                                    );
                                  },
                                ),
                                alignLabelWithHint: false,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 50),
                        ElevatedButton(
                          onPressed: () {
                             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  const Search()),
            );
                          },
                          
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
                            backgroundColor: Color.fromARGB(255, 2, 2, 2),
                            foregroundColor: Color.fromARGB(255, 254, 252, 252),
                            fixedSize:
                                Size(MediaQuery.of(context).size.width - 50, 50),
                          ),
                          child: const Text("Login"),
                        ),
                     TextButton(
                child: const Text(
                  "Forget Password?",
                  style: TextStyle(fontSize: 12 , color: Colors.black),
                ),
                onPressed: () {
                   
                  },
                     ),
                   
                         SizedBox(height: 55,),
                     Text("Create new account" , style: TextStyle(fontWeight: FontWeight.bold),),
                       ElevatedButton(
                          onPressed: () {
                            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignUp()),
            );
                          },
                          style: ElevatedButton.styleFrom(
                             shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
                            backgroundColor: Color.fromARGB(255, 2, 2, 2),
                            foregroundColor: Color.fromARGB(255, 254, 252, 252),
                            fixedSize:
                                Size(MediaQuery.of(context).size.width - 50, 50),
                          ),
                          child: const Text("Sign up"), ),  ],
                    ),
                  ),
                ),
              
                  ],
            ),
          )),
    );
  }
}
