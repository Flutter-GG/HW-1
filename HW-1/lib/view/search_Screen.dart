import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/widgets/pupular_Recipe_Widget.dart';
import 'package:flutter_application_1/widgets/editor_Choice_Widget.dart';
import 'package:flutter_application_1/widgets/icon_widget.dart';
import 'package:flutter_application_1/widgets/meals_Filter_Button.dart';
import 'package:flutter_application_1/widgets/textField_Widget.dart';
import 'package:flutter_application_1/widgets/text_widget.dart';
import 'package:flutter_application_1/widgets/titleBar_Widget.dart';

import 'filter_Screen.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Center(
            child: TextWidget(
              text: 'Search',
              isBold: true,
              fontSize: 28,
            ),
          )),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          //--------------Row of Search box and filter button--------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextFieldWidget(
                hintText: 'Search',
                prefixIcon: Icons.search,
                width: MediaQuery.of(context).size.width - 120,
              ),
              MealsFilterButton(
                isFilterButton: true,
                width: 80,
                bgColor: appColors[1],
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => const FilterScreen());
                },
              ),
            ],
          ),
          //-------------------List of Meals Buttons-------------------
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 10),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MealsFilterButton(
                  text: 'Breakfast',
                  bgColor: appColors[1],
                ),
                const SizedBox(
                  width: 10,
                ),
                const MealsFilterButton(text: 'Lunch'),
                const SizedBox(
                  width: 10,
                ),
                const MealsFilterButton(text: 'Dinner'),
              ],
            ),
          ),
          //--------------Title bar for pupular recipes--------------
          const TitleBar(
            title: 'Pupular Recipes',
          ),
          //--------------Row of pupular recipes view--------------
          const SingleChildScrollView(
            padding: EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PupularRecipWidget(
                  text: 'Egg & Avocado',
                ),
                SizedBox(
                  width: 15,
                ),
                PupularRecipWidget(
                  text: 'Beef burger',
                  isNetwork: true,
                  path:
                      'https://th.bing.com/th/id/OIP.BifzU123u1DhkbCNyHwYlQHaHa?pid=ImgDet&rs=1',
                ),
                SizedBox(
                  width: 15,
                ),
                PupularRecipWidget(
                  text: 'Egg & Avocado',
                  isNetwork: true,
                  path: '',
                ),
                SizedBox(
                  width: 15,
                ),
                PupularRecipWidget(
                  text: 'Beef burger',
                  isNetwork: true,
                  path:
                      'https://media-cdn.tripadvisor.com/media/photo-s/13/85/35/c1/big-wheel-veggie-beyond.jpg',
                ),
              ],
            ),
          ),
          //--------------Title bar for Editor's Choice--------------
          const TitleBar(
            title: "Editor's Choice",
          ),
          //--------------column of Editor's Choice view--------------
          const Expanded(
              child: SingleChildScrollView(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      EditorChoiceWidget(
                        title: 'Easy homemade beef burger',
                        editorName: 'James Spader',
                        photoPath: 'assets/images/img-1.png',
                        profilePhotoPath: 'assets/images/profile-2.jpg',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      EditorChoiceWidget(
                        title: 'Easy homemade chicken ',
                        editorName: 'James Spader',
                        isNetwork: true,
                        photoPath:
                            'https://images3.alphacoders.com/597/597575.jpg',
                        profilePhotoPath: 'assets/images/profile-2.jpg',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      EditorChoiceWidget(
                        title: 'Easy homemade beef burger',
                        editorName: 'James Spader',
                        photoPath: 'assets/images/img.jpeg',
                        profilePhotoPath: 'assets/images/profile.png',
                      ),
                    ],
                  )))
        ],
      )),
      //--------------bottom Navigation Bar and center floating button--------------
      bottomNavigationBar: const BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconWidget(icon: Icon(Icons.home)),
            IconWidget(icon: Icon(Icons.search)),
            IconWidget(icon: Icon(Icons.notifications_none)),
            IconWidget(icon: Icon(Icons.account_circle_outlined)),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: appColors[0],
        child: Image.asset(
          'assets/icons/chefHat.png',
          width: 25,
          height: 25,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
