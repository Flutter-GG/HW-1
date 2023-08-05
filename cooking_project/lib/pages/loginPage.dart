import 'package:flutter/material.dart';
import '../widgets/customButtonWidget.dart';
import '../widgets/paswordWedgit.dart';
import '../widgets/textWidget.dart';
import 'createAccountPage.dart';
import 'searchPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            title: //call wedgit
                const TextWidget(
                    text: 'Login',
                    size: 30,
                    weight: FontWeight.bold,
                    color: Colors.black)),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(7.0),
                    child: // call wedgit
                        TextWidget(
                            text: 'Email Adresses',
                            size: 20,
                            weight: FontWeight.bold,
                            color: Colors.black),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.20),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Email",
                      labelText: "Enter Email Address",
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                      ),
                      // for error
                      errorStyle: TextStyle(fontSize: 18.0),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius:
                              BorderRadius.all(Radius.circular(9.0)))),
                ),
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(7.0),
                    child: SizedBox(
                      child: // call wedgit
                          TextWidget(
                              text: 'Password',
                              size: 20,
                              weight: FontWeight.bold,
                              color: Colors.black),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(20.20),
                child: PasswordWidget(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: // call wedgit
                    CustomButtonWedgit(
                  title: "Login",
                  bgColor: Color(0xFF042628),
                  fgColor: Colors.white,
                  isBorderSide: true,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SearchPage()));
                  },
                ),
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 125),
                    child: SizedBox(
                      child: TextWidget(
                          text: 'Forgot Password?',
                          size: 18,
                          weight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  const SizedBox(
                    child: TextWidget(
                        text: 'or create new account',
                        size: 18,
                        weight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  //call widget
                  CustomButtonWedgit(
                    title: "Sign Up",
                    bgColor: Color(0xFF042628),
                    fgColor: Colors.white,
                    isBorderSide: true,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateAcoount()));
                    },
                  ),
                ],
              ),
            ],
          ),
        )));
  }
}
