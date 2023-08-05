import 'package:flutter/material.dart';
import 'package:recipes_finder/Views/home_page.dart';
import '/Components/SignUpAndLoginComponents/navigation_button.dart.dart';
import '/Components/SignUpAndLoginComponents/password_field.dart';
import '/Components/SignUpAndLoginComponents/custom_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required this.onLoginButtonPressed,
  }) : super(key: key);

  final VoidCallback onLoginButtonPressed;

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2.0),
          child: Text(
            'Email Address',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        CustomField(
          hintText: 'Enter Email Address',
          prefixIcon: Icons.email,
        ),
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.symmetric(vertical: .5),
          child: Text(
            'Password',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        PasswordField(),
        SizedBox(height: 24),
        
         NavigationButton(
            buttonText: 'Login',
            destination: HomeView(),
          ),
      
        SizedBox(height: 24),
        Align(
          alignment: Alignment.center, 
          child: Center(
            child: Text(
              'Forgot password?',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
