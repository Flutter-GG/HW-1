import 'package:flutter/material.dart';
import 'package:flutter_hw1/custom_widgets/app_bar_widget.dart';
import 'package:flutter_hw1/custom_widgets/buttons_widget.dart';
import 'package:flutter_hw1/custom_widgets/category_widget.dart';
import 'package:flutter_hw1/custom_widgets/fields_widget.dart';
import 'package:flutter_hw1/custom_widgets/texts_widget.dart';
// import 'package:flutter_hw1/pages/main_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBarWidget(page: 'Search'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: CustomFieldsWidget(
                      label: 'Search',
                      customFontSize: 16,
                      customHintText: 'Search',
                      customPrefixIcon: Icon(Icons.search)),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CustomButtonsWidget(
                    isElevatedButton: false,
                    isSizedBoxButton: true,
                    sizedBoxButtonHeight: 50,
                    sizedBoxIcon: Icon(
                      Icons.connect_without_contact_outlined,
                      size: 15,
                    ),
                  ),
                )
              ],
            ),
            CustomCategoryWidget()
          ],
        ),
      ),
    );
  }
}
