import 'package:flutter/material.dart';
import 'package:hw1_alawashiz/screens/creat_account.dart';
import 'package:hw1_alawashiz/screens/home_screen.dart';
import 'package:hw1_alawashiz/screens/search_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

// 70B9BE => light
// 042628 => dark
