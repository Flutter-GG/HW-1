import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "Create Account",
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
                'Username',
                style: TextStyle(fontSize: 13.5),
              )),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
          ),
          Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(5),
              child: const Text(
                'First Name',
                style: TextStyle(fontSize: 13.5),
              )),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
                labelText: 'First Name',
              ),
            ),
          ),
          Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(5),
              child: const Text(
                'Last Name',
                style: TextStyle(fontSize: 13.5),
              )),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
                labelText: 'Last Name',
              ),
            ),
          ),
          Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(5),
              child: const Text(
                'Email Address',
                style: TextStyle(fontSize: 13.5),
              )),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
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
            padding: const EdgeInsets.all(37.0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Continue"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff042628),
                    fixedSize: Size(300, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 2,
                ),
                  Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 10),
                              child: Text(
                                "by continuing ,you agree to the terms of the services & privacy policy",
                                textAlign: TextAlign.center,
                              ),
                            ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
