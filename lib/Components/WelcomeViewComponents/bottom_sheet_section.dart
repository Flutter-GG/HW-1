import 'package:flutter/material.dart';
import '../../Views/login_page.dart';
import '../SignUpAndLoginComponents/navigation_button.dart.dart';

class BottomSheetSection extends StatelessWidget {
  final bool isVisible;

  const BottomSheetSection({super.key, required this.isVisible});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        height: isVisible ? MediaQuery.of(context).size.height / 3 : 0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Let\'s Cooking',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Cooking based on the food recipes you \nfind and the food you love.',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),
            const NavigationButton(
              buttonText: 'Get Started',
              destination: LogInView(), 
            ),
          ],
        ),
      ),
    );
  }
}
