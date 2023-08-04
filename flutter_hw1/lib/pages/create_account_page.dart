import 'package:flutter/material.dart';
import 'package:flutter_hw1/custom_widgets/app_bar_widget.dart';
import 'package:flutter_hw1/custom_widgets/buttons_widget.dart';
import 'package:flutter_hw1/custom_widgets/fields_widget.dart';
import 'package:flutter_hw1/custom_widgets/texts_widget.dart';
import 'package:flutter_hw1/pages/search_page.dart';
import 'package:flutter_hw1/pages/working_on_it_page.dart';
// import 'package:flutter_hw1/pages/main_page.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBarWidget(page: 'Create Account'),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CustomFieldsWidget(
                          label: 'Username',
                          isBold: true,
                          customFontSize: 16,
                          customHintText: 'Username',
                          customPrefixIcon: Icon(Icons.person_2_outlined)),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Expanded(
                            child: CustomFieldsWidget(
                                label: 'Firstname',
                                isBold: true,
                                customFontSize: 16,
                                customHintText: 'Firstname',
                                customPrefixIcon:
                                    Icon(Icons.person_2_outlined)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: CustomFieldsWidget(
                                label: 'Lastname',
                                isBold: true,
                                customFontSize: 16,
                                customHintText: 'Lastname',
                                customPrefixIcon:
                                    Icon(Icons.person_2_outlined)),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomFieldsWidget(
                          label: 'Email Address',
                          isBold: true,
                          customFontSize: 16,
                          customHintText: 'Email Address',
                          customPrefixIcon: Icon(Icons.email_outlined)),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomFieldsWidget(
                        label: 'Password',
                        isBold: true,
                        customFontSize: 16,
                        customHintText: 'Password',
                        customPrefixIcon: Icon(Icons.lock_outline),
                        customSuffixIcon: Icon(Icons.remove_red_eye_outlined),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButtonsWidget(
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SearchPage(),
                              ),
                            );
                          },
                          customText: "Continue",
                          elevatedButtonWidth:
                              MediaQuery.of(context).size.width),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomTextWidget(
                          customFontSize1: 13,
                          isBold1: false,
                          customText1: 'By continuing, you agree to the'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButtonsWidget(
                              onPress: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const WorkingOnIt(),
                                  ),
                                );
                              },
                              fgColor: Colors.black,
                              customFontSize: 14,
                              isElevatedButton: false,
                              customText: 'Terms of Services',
                              elevatedButtonWidth:
                                  MediaQuery.of(context).size.width),
                          const Text('&'),
                          CustomButtonsWidget(
                              onPress: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const WorkingOnIt(),
                                  ),
                                );
                              },
                              isElevatedButton: false,
                              customFontSize: 14,
                              fgColor: Colors.black,
                              customText: 'Privacy Policy',
                              elevatedButtonWidth:
                                  MediaQuery.of(context).size.width)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
