import 'package:flutter/material.dart';
import 'package:flutter_hw1/custom_widgets/app_bar_widget.dart';
import 'package:flutter_hw1/custom_widgets/buttons_widget.dart';
import 'package:flutter_hw1/custom_widgets/category_widget.dart';
import 'package:flutter_hw1/custom_widgets/custom_editor_choice_widget.dart';
import 'package:flutter_hw1/custom_widgets/fields_widget.dart';
import 'package:flutter_hw1/custom_widgets/texts_widget.dart';

import '../custom_widgets/custom_popular_recipes_card_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBarWidget(page: 'Search'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              children: [
                Expanded(
                  flex: 5,
                  child: CustomFieldsWidget(
                    label: 'Search',
                    customFontSize: 16,
                    customHintText: 'Search',
                    customPrefixIcon: Icon(Icons.search),
                  ),
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
                ),
              ],
            ),
            const SizedBox(height: 20),
            CustomCategoryWidget(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextWidget(customText1: 'Popular Recipes'),
                SizedBox(width: 185),
                CustomButtonsWidget(
                  isElevatedButton: false,
                  customText: 'View All',
                  customFontSize: 13,
                  fgColor: Color(0xff6FB9BE),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomPopularRecipesCardWidget(
                    mainMealName: 'Stake & vigitables',
                    mainImageAsset: 'assets/images/food_images/food1.jpg',
                  ),
                  CustomPopularRecipesCardWidget(
                    mainMealName: 'Special salad',
                    mainImageAsset: 'assets/images/food_images/food2.jpg',
                  ),
                  CustomPopularRecipesCardWidget(
                    mainMealName: 'مدري خبز والا لحم',
                    mainImageAsset: 'assets/images/food_images/food3.jpg',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextWidget(customText1: "Editor's Choice"),
                SizedBox(width: 185),
                CustomButtonsWidget(
                  isElevatedButton: false,
                  customText: 'View All',
                  customFontSize: 13,
                  fgColor: Color(0xff6FB9BE),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomEditorChoiceWidget(
                      mainMealName: 'bidza',
                      profileName: 'Mohammed Alsahli',
                      mainImageAsset: 'assets/images/food_images/food6.jpg',
                      profileImageAsset:
                          'assets/images/profile_images/person1.jpg',
                      containerWidth: MediaQuery.of(context).size.width,
                    ),
                    CustomEditorChoiceWidget(
                      mainMealName: 'salad',
                      profileName: 'another person',
                      mainImageAsset: 'assets/images/food_images/food5.jpg',
                      profileImageAsset:
                          'assets/images/profile_images/person2.jpg',
                      containerWidth: MediaQuery.of(context).size.width,
                    ),
                    CustomEditorChoiceWidget(
                      mainMealName: 'Pancake',
                      profileName: 'person3',
                      mainImageAsset: 'assets/images/food_images/food4.jpg',
                      profileImageAsset:
                          'assets/images/profile_images/person3.jpg',
                      containerWidth: MediaQuery.of(context).size.width,
                    ),
                    CustomEditorChoiceWidget(
                      mainMealName: 'للحين ما ادري وش ذا',
                      profileName: 'محمد سعود السهلي',
                      mainImageAsset: 'assets/images/food_images/food3.jpg',
                      profileImageAsset:
                          'assets/images/profile_images/person6.jpg',
                      containerWidth: MediaQuery.of(context).size.width,
                    ),
                    CustomEditorChoiceWidget(
                      mainMealName: 'Another Salad',
                      profileName: 'F',
                      mainImageAsset: 'assets/images/food_images/food9.jpg',
                      profileImageAsset:
                          'assets/images/profile_images/person5.jpg',
                      containerWidth: MediaQuery.of(context).size.width,
                    ),
                    CustomEditorChoiceWidget(
                      mainMealName: 'كيكة',
                      profileName: 'Mohammed Alsahli',
                      mainImageAsset: 'assets/images/food_images/food7.jpg',
                      profileImageAsset:
                          'assets/images/profile_images/person4.jpg',
                      containerWidth: MediaQuery.of(context).size.width,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
