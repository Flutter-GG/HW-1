import 'package:flutter/material.dart';
import '/ViewModels/login_viewmodel.dart';
import 'package:provider/provider.dart';

class PasswordField extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const PasswordField({Key? key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<LoginViewModel>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0), // Add vertical padding
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: Colors.grey.withOpacity(0.5)), // Add opacity to the border color
        ),
        elevation: 0,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Enter Password',
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: IconButton(
              icon: viewModel.isPasswordVisible ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
              onPressed: () {
                viewModel.togglePasswordVisibility();
              },
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(vertical: 24.0), 
            hintStyle:  TextStyle(color: Colors.grey.withOpacity(0.7)), 
          ),
          obscureText: !viewModel.isPasswordVisible,
        ),
      ),
    );
  }
}
