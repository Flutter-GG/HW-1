import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Components/SignUpAndLoginComponents/app_bar.dart';
import '../Components/SignUpAndLoginComponents/custom_field.dart';
import '../Components/SignUpAndLoginComponents/navigation_button.dart.dart';
import '../Components/SignUpAndLoginComponents/password_field.dart';
import '../ViewModels/login_viewmodel.dart';
import '/Views/home_page.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginViewModel(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const CustomAppBar(title: 'Create Account'),
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Username',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const CustomField(
                hintText: 'Username',
                prefixIcon: Icons.person,
              ),
             const Row(
                children: [
                   Text(
                    'First Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 110),
                                   Text(
                    'Last Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Expanded(
                    child: CustomField(
                      hintText: 'First Name',
                      prefixIcon: Icons.person,
                    ),
                  ),
                  Expanded(
                    child: CustomField(
                      hintText: 'Last Name',
                      prefixIcon: Icons.person,
                    ),
                  ),
                ],
              ),
              const Text(
                'Email Address',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const CustomField(
                hintText: 'Email Address',
                prefixIcon: Icons.email,
              ),
              const Text(
                'Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const PasswordField(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: NavigationButton(
                  buttonText: 'Continue',
                  destination: HomeView()
                ),
              ),
              const SizedBox(height: 16,),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      'By continuing, you agree to the',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                    ),
                   const Text(
                      'Terms of Service && Privacy Policy',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
