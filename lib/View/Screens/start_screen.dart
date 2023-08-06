import 'package:flutter/material.dart';
import 'package:hw_1/View/Screens/login.dart';
import 'package:hw_1/View/widget/start_image.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreen();
}

class _StartScreen extends State<StartScreen> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
          bottom: false,
          top: false,
          child: Column(
            children: [
               Expanded(
                flex: 2,
                child:StartImage(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color(0xffF8F8F8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Let's cooking",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        "Cooking based on the food recipes you find and fodd you love ",
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 33),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Login()),
  );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 2, 2, 2),
                          foregroundColor: const Color.fromARGB(255, 254, 252, 252),
                          fixedSize:
                              Size(MediaQuery.of(context).size.width - 50, 50),
                        ),
                        child: const Text("Get Started"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
