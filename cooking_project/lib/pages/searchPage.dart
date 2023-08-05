import 'package:flutter/material.dart';

import '../widgets/customFeildWidget.dart';
import '../widgets/imageScrollWidget.dart';

import '../widgets/textWidget.dart';
import 'filterPage.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: // app bar//
            AppBar(
                iconTheme: IconThemeData(
                  color: Colors.black,
                ),
                centerTitle: true,
                backgroundColor: Colors.white,
                title: //call wedgit
                    const TextWidget(
                        text: 'Search',
                        size: 30,
                        weight: FontWeight.bold,
                        color: Colors.black)),

        // floting button //
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add_circle_outline_sharp),
          backgroundColor: Colors.black,
          mini: true,
        ),

        // BottomNavigationBar//
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ))
            ],
          ),
        ),
        body: SafeArea(
            child: Column(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  //call widget
                  child: FieldsWidget(
                    label: '',
                    customFontSize: 16,
                    customHintText: 'Search',
                    customPrefixIcon: Icon(Icons.search),
                  ),
                ),
                const SizedBox(
                  height: 80,
                  width: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: // for filter button
                      TextButton.icon(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) => const FilterPage());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF70B9BE),
                    ),
                    icon: const Icon(
                      Icons.filter_list,
                      size: 40,
                      color: Color.fromARGB(255, 252, 252, 253),
                    ),
                    label: const Text(""),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
              height: 100,
              child: // list view also i can use => SingleChildScrollView
                  ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                Container(
                  width: 100,
                  color: Color(0xFF70B9BE),
                  child: const Center(
                      child: // call wedgit
                          TextWidget(
                              text: 'Break fast',
                              size: 18,
                              weight: FontWeight.bold,
                              color: Colors.black)),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 100,
                  color: Color(0xFF70B9BE),
                  child: const Center(
                      child: // call wedgit
                          TextWidget(
                              text: 'Lunch',
                              size: 18,
                              weight: FontWeight.bold,
                              color: Colors.black)),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 100,
                  color: const Color(0xFF70B9BE),
                  child: const Center(
                      child: // call wedgit
                          TextWidget(
                              text: 'Snack',
                              size: 18,
                              weight: FontWeight.bold,
                              color: Colors.black)),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 100,
                  color: const Color(0xFF70B9BE),
                  child: const Center(
                      child: // call wedgit
                          TextWidget(
                              text: 'Dineer',
                              size: 18,
                              weight: FontWeight.bold,
                              color: Colors.black)),
                ),
              ])),
          const Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 10, top: 30),
                  child: // call wedgit
                      TextWidget(
                          text: 'Popular Recipes',
                          size: 20,
                          weight: FontWeight.bold,
                          color: Colors.black)),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 160, top: 30),
                      child: // call wedgit
                          TextWidget(
                              text: 'View All',
                              size: 15,
                              weight: FontWeight.bold,
                              color: Color(0xFF70B9BE)))
                ],
              )
            ],
          ),
          const Row(children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: // call wedgit
                  ImageScrollWidget(
                      size: 110,
                      isNetworking: false,
                      path: 'assets/images/egg.png'),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: // call wedgit
                      ImageScrollWidget(
                    size: 110,
                    isNetworking: false,
                    path: 'assets/images/rice.png',
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: // call wedgit
                          ImageScrollWidget(
                        size: 110,
                        isNetworking: false,
                        path: 'assets/images/chicken.png',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ]),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    // call wedgit
                    TextWidget(
                      text: "Egg & Avo...",
                      size: 20,
                      weight: FontWeight.bold,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    // call wedgit
                    TextWidget(
                      text: "Bowl of r...",
                      size: 20,
                      weight: FontWeight.bold,
                    ),
                    //call wedgit
                    SizedBox(
                      width: 35,
                    ),
                    //call wedgit
                    TextWidget(
                      text: "Chicken S...",
                      size: 20,
                      weight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8, top: 35),
                    child: // call wedgit
                        TextWidget(
                      text: "Editors Chice",
                      size: 20,
                      weight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 200, top: 35),
                        child: // call wedgit
                            TextWidget(
                          text: "View All",
                          size: 15,
                          weight: FontWeight.bold,
                          color: Color(0xFF70B9BE),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  //call wedgit
                  const ImageScrollWidget(
                    size: 80,
                    isNetworking: false,
                    path: 'assets/images/Burger.png',
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        //call wedgit
                        TextWidget(
                          text: "Easy homemade beef burger",
                          size: 15,
                          weight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 29),
                    child: TextButton.icon(
                      onPressed: () {},
                      style: //call wedgit
                          ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF042628),
                      ),
                      icon: const Icon(
                        Icons.arrow_forward,
                        size: 25,
                        color: Color.fromARGB(255, 252, 252, 253),
                      ),
                      label: Text(""),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
                width: 20,
              )
            ],
          ),
          Row(
            children: [
              // call wedgit
              const ImageScrollWidget(
                size: 80,
                isNetworking: false,
                path: 'assets/images/blueberryWithEgg.png',
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    // call wedgit
                    TextWidget(
                      text: "Blueberry with egg for breakfast",
                      size: 15,
                      weight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(),
                child: TextButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF042628),
                  ),
                  icon: const Icon(
                    Icons.arrow_forward,
                    size: 25,
                    color: Color.fromARGB(255, 252, 252, 253),
                  ),
                  label: Text(""),
                ),
              ),
            ],
          ),
        ])));
  }
}
