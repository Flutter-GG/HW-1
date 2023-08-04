import 'package:flutter/material.dart';
import 'package:yum/widget/button_widget.dart';
import 'package:yum/widget/text_widget.dart';
import '../widget/formfield_widget.dart';
import '../widget/image_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF8F8F8),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const TextWidget(
          text: "Create Account",
          color: Color(0xff042628),
          weight: FontWeight.w800,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          //replace with our own icon data.
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 30, right: 10),
              child: const TextWidget(
                text: "Username", size: 15,
                weight: FontWeight.w600,
                color: Color(0xff042628),
                // textAlign: TextAlign.left,
              ),
            ),
            Center(
              child: Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  width: MediaQuery.of(context).size.width - 50,
                  child: const CustomTextFormField(
                    hintText: "Username",
                    icon: Icons.account_box_outlined,
                  )),
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 30, right: 10, top: 10),
                  child: const TextWidget(
                    text: "First Name", size: 15,
                    weight: FontWeight.w600,
                    color: Color(0xff042628),
                    // textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 90, right: 10, top: 10),
                  child: const TextWidget(
                    text: "Last Name", size: 15,
                    weight: FontWeight.w600,
                    color: Color(0xff042628),
                    // textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Center(
                  child: Container(
                      width: 190,
                      padding: const EdgeInsets.only(
                          left: 30, right: 10, bottom: 10, top: 10),
                      child: const CustomTextFormField(
                          hintText: "First Name",
                          icon: Icons.account_box_outlined)),
                ),
                Center(
                  child: Container(
                      width: 190,
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 10, top: 10),
                      child: const CustomTextFormField(
                        hintText: "Last Name",
                        icon: Icons.account_box_outlined,
                      )),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 30, right: 10),
              child: const TextWidget(
                text: "Email Address", size: 15,
                weight: FontWeight.w600,
                color: Color(0xff042628),
                // textAlign: TextAlign.left,
              ),
            ),
            Center(
              child: Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  width: MediaQuery.of(context).size.width - 50,
                  child: const CustomTextFormField(
                    hintText: "Enter email address",
                    icon: Icons.email_outlined,
                  )),
            ),
            Container(
              padding: const EdgeInsets.only(left: 30, right: 10),
              child: const TextWidget(
                text: "Password", size: 15, weight: FontWeight.w600,
                color: Color(0xff042628),
                // textAlign: TextAlign.left,
              ),
            ),
            Center(
              child: Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  width: MediaQuery.of(context).size.width - 50,
                  child: const CustomTextFormField(
                    hintText: "Enter email address",
                    icon: Icons.email_outlined,
                  )),
            ),
            Center(
                child: Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: const CustomElevatedButton(
                      title: 'Continue',
                    ))),
            const SizedBox(
              height: 20,
            ),
            const Center(
                child: TextWidget(
              text: " By continuing, you agree to the",
              weight: FontWeight.w400,
              size: 15,
            )),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                TextWidget(
                  text: "Terms of Service",
                  weight: FontWeight.w800,
                  size: 15,
                ),
                TextWidget(
                  text: " & ",
                  weight: FontWeight.w100,
                  size: 15,
                ),
                TextWidget(
                  text: "Privacy Policy",
                  weight: FontWeight.w800,
                  size: 15,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
