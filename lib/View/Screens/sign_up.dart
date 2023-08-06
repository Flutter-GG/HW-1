import 'package:flutter/material.dart';
import 'package:hw_1/View/Screens/search_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
       backgroundColor:Colors.transparent, 
         elevation: 0,
         title: const Text("Create Account " , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 20, )),
         
        centerTitle:true ,
        leading: const BackButton(color: Colors.black),
      ),
      body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    prefixIcon: const Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.person,
                      ),
                    ),
                    labelText: 'User Name',
                    fillColor: Colors.black,
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 180,
                        child: TextField(
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            prefixIcon: const Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: Icon(
                                Icons.person,
                              ),
                            ),
                            labelText: "First Name",
                          
                          ),
                        ),
                      ),
                      SizedBox(width: 12,),
                      SizedBox(
                        width: 180,
                        child: TextField(
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            prefixIcon: const Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: Icon(
                                Icons.person,
                              ),
                            ),
                            labelText: "Last Name",
                           
                         
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      prefixIcon: const Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(
                          Icons.email_outlined,
                        ),
                      ),
                      labelText: 'Email Adress ',
                      fillColor: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
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
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                     Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Search()),
            );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: const Color.fromARGB(255, 2, 2, 2),
                    foregroundColor: const Color.fromARGB(255, 254, 252, 252),
                    fixedSize: Size(MediaQuery.of(context).size.width - 50, 50),
                  ),
                  child: const Text("Continue"),
                ),
                const SizedBox(
                  height: 13,
                ),
                const Text("By continuing , you agree to the"),
                const Text(
                  "Terms of Services & Privacy Policy",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )),
    );
  }
}
