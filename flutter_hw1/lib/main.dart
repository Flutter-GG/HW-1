import 'package:flutter/material.dart';
import 'package:flutter_hw1/custom_widgets/fields_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Padding(
            padding: EdgeInsets.all(8.0),
            child: FieldsWidget(
              customFintSize: 16,
              customHintText: '55555',
              label: 'Name',
              isBold: true,
              customPrefixIcon: Icon(Icons.abc),
            )),
      ),
    );
  }
}
