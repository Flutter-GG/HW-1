import 'package:flutter/material.dart';
import '../widgets/customButtonWidget.dart';
import '../widgets/paswordWedgit.dart';
import '../widgets/textWidget.dart';
import 'searchPage.dart';

class CreateAcoount extends StatelessWidget {
  const CreateAcoount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            title: //call wedgit
                const TextWidget(
                    text: 'Create Account',
                    size: 30,
                    weight: FontWeight.bold,
                    color: Colors.black)),
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(children: [
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: SizedBox(
                          child: // call wedgits
                              TextWidget(
                                  text: 'User Name',
                                  size: 15,
                                  weight: FontWeight.bold,
                                  color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.10),
                    child: // call wedgit
                        TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Username",
                          labelText: "Username",
                          prefixIcon: Icon(
                            Icons.person_2_outlined,
                            color: Colors.black,
                          ),
                          //for error
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
                          padding: EdgeInsets.all(8.0),
                          child: // call wedgit
                              TextWidget(
                                  text: 'First Name',
                                  size: 15,
                                  weight: FontWeight.bold,
                                  color: Colors.black)),
                      SizedBox(
                        width: 130,
                      ),
                      Row(
                        children: [
                          // call wedgit
                          TextWidget(
                              text: 'Last Name',
                              size: 15,
                              weight: FontWeight.bold,
                              color: Colors.black)
                        ],
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: //call wedgit
                                TextField(
                          decoration: InputDecoration(
                              hintText: "First Name",
                              labelText: "First Name",
                              prefixIcon: Icon(
                                Icons.person_2_outlined,
                                color: Colors.black,
                              ),
                              errorStyle: TextStyle(fontSize: 18.0),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(9.0)))),
                        )),
                        SizedBox(
                          height: 10,
                          width: 20,
                        ),
                        Expanded(
                            child: // call widget
                                TextField(
                          decoration: InputDecoration(
                              hintText: "Last Name",
                              labelText: "Last Name",
                              prefixIcon: Icon(
                                Icons.person_2_outlined,
                                color: Colors.black,
                              ),
                              errorStyle: TextStyle(fontSize: 18.0),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(9.0)))),
                        )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          child: Container(
                              child: const // call wedgit
                                  TextWidget(
                                      text: 'Email Address',
                                      size: 15,
                                      weight: FontWeight.bold,
                                      color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.5),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter Email Address",
                          labelText: "Enter Email Address",
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.black,
                          ),
                          errorStyle: TextStyle(fontSize: 18.0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(19.0)))),
                    ),
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: SizedBox(
                          child: TextWidget(
                              text: 'Password',
                              size: 15,
                              weight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),

                  const PasswordWidget(),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  //call wedgit
                  CustomButtonWedgit(
                    title: "Continue",
                    bgColor: Color.fromARGB(255, 2, 46, 44),
                    fgColor: Colors.white,
                    isBorderSide: true,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchPage()));
                    },
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 100, top: 50),
                        child: Row(
                          children: [
                            TextWidget(
                                text: 'By continuing, you agree to the',
                                size: 15,
                                weight: FontWeight.bold,
                                color: Colors.black),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 100, top: 10),
                          child: // call wedgit
                              TextWidget(
                                  text: 'Terms of Services & Privacy',
                                  size: 15,
                                  weight: FontWeight.bold,
                                  color: Colors.black)),
                    ],
                  )
                ]))));
  }
}
