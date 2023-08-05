import 'package:flutter/material.dart';
import 'package:recipes_finder/Views/signup_page.dart';
import '../Components/SignUpAndLoginComponents/login_form.dart';
import '/Components/SignUpAndLoginComponents/navigation_button.dart.dart';
import '/ViewModels/login_viewmodel.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

class LogInView extends StatelessWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginViewModel(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Login',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              LoginForm(
                onLoginButtonPressed: () {  },
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.center,
                child: Text('Or Create a New Account',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    )
                ),
              ),
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 1.0),
                child: NavigationButton(
                  buttonText: 'Sign Up',
                  destination: SignUpView(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
