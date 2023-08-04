import 'package:flutter/material.dart';
import 'views/init_screen.dart';

main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    ///Widget in fultter is class in dart
    return const MaterialApp(
      home: InitScreen(),
    );
  }
}
