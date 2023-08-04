import 'package:flutter/material.dart';
import 'package:flutter_hw1/custom_widgets/app_bar_widget.dart';

/* this file for buttons or pages that I work on it */
class WorkingOnIt extends StatelessWidget {
  const WorkingOnIt({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBarWidget(page: 'Create Account'),
        backgroundColor: Colors.white,
        body: Center(
          child: Text(
            'Working On It...',
            style: TextStyle(fontSize: 50),
          ),
        ));
  }
}
