
import 'package:flutter/material.dart';
import '../Components/bottom_sheet_section.dart';
import '../Components/image_section.dart';
import '../ViewModels/welcome_viewmodel.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  final WelcomeViewModel viewModel = WelcomeViewModel();

  @override
  void initState() {
    super.initState();
    viewModel.showBottomSheet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Add a Container for background color
        color: Colors.teal[200], // Set your desired background color here
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TopImageSection(),
            BottomSheetSection(isVisible: viewModel.isBottomSheetVisible),
          ],
        ),
      ),
    );
  }
}
