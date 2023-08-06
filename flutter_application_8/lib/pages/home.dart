import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_application_8/animation/bouncing_effects.dart';
import 'package:flutter_application_8/constants.dart';
import '../data/data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarDividerColor: Color(0xff212121),
      systemNavigationBarColor: Color(0xff212121),
      statusBarColor: defaultBackgroundColor,
    ));
    super.initState();
  }

  int currentIndexBottomBar = 0;
  int currentIndexSwiperHome = 0;

  final iconList = <IconData>[
    Icons.home_outlined,
    Icons.shopping_cart_checkout_outlined,
    Icons.person_outline,
    Icons.settings_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: AppBar(
          elevation: 0,
          title: const Text(
            "Search",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              splashRadius: 22,
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            )
          ],
          backgroundColor: Colors.transparent,
        ),
      ),
      body: SizedBox(
        width: w,
        height: h,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 10),
              sendBar(w),
              const SizedBox(height: 20),
              marks(w),
              const SizedBox(height: 20),
              Container(
                width: w * 0.95,
                height: 130,
                decoration: const BoxDecoration(
                  color: blackColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: ListView(
                  children: [
                    Positioned(
                      right: -30,
                      child: Image.asset(
                        "images/products/product0.jpg",
                        height: 120,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: w * 0.95,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Most Popular",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "View More",
                        style: TextStyle(
                          fontSize: 18,
                          color: customColor,
                        ),
                      ),
                    ]),
              ),
              const SizedBox(height: 20),
              SizedBox(
                // color: Colors.green,
                width: w * 0.95,
                child: StaggeredGrid.count(
                  // shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: [
                    ...List.generate(
                      products.length,
                      (index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(builder: (_) => Text('')),
                          ).then((value) {
                            if (value) {
                              products[index]["isLiked"] = true;
                              setState(() {});
                            } else if (!value) {
                              products[index]["isLiked"] = false;
                              setState(() {});
                            }
                          });
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 6,
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            height: 280,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 180,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: defaultBackgroundColor,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Hero(
                                        tag:
                                            "${products[index]["name"]}-$index",
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(20),
                                          ),
                                          child: SizedBox(
                                            height: 180,
                                            width: double.infinity,
                                            child: Image.asset(
                                              products[index]["image"],
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 5,
                                        right: 5,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              products[index]["isLiked"] =
                                                  !products[index]["isLiked"];
                                            });
                                          },
                                          child: CircleAvatar(
                                            backgroundColor: Colors.black,
                                            radius: 20,
                                            child: Icon(
                                              Icons.favorite,
                                              color: products[index]["isLiked"]
                                                  ? Colors.red
                                                  : Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 4,
                                    ),
                                    // color: Colors.red,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            const SizedBox(width: 5),
                                            Text(products[index]["stars"]
                                                .toString()),
                                            const SizedBox(width: 5),
                                            Text(
                                              "(${products[index]["reviews"].toString()} reviews)",
                                              style: const TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 5),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 4),
                                          child: Text(products[index]["name"]),
                                        ),
                                        const SizedBox(height: 5),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 4),
                                          child: Text(
                                            "${products[index]["price"].toString()} £",
                                            style: const TextStyle(
                                              fontSize: 19,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                  
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 32),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.flip_outlined,
            size: 24,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        height: 80,
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          final color = !isActive ? Colors.white54 : Colors.white;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Icon(
                iconList[index],
                size: 24,
                color: color,
              ),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  index == 0
                      ? "Home"
                      : index == 1
                          ? "Cart"
                          : index == 2
                              ? "Account"
                              : "Settings",
                  maxLines: 1,
                  style: TextStyle(color: color),
                ),
              )
            ],
          );
        },
        backgroundColor: blackColor,
        activeIndex: currentIndexBottomBar,
        splashColor: customColor,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.softEdge,
        gapLocation: GapLocation.center,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => currentIndexBottomBar = index),
      ),
    );
  }

  Widget marks(double w) {
    return Container(
      width: w,
      // height: 50,
      // color: Colors.white,
      margin: const EdgeInsets.only(left: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          ...List.generate(
            brandes.length,
            (index) {
              return Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    TextButton(
                      child: Text(
                        brandes[index]["lable"],
                        style: const TextStyle(fontSize: 16),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              );
            },
          )
        ]),
      ),
    );
  }

  Container sendBar(double w) {
    return Container(
      width: w * 0.95,
      height: 60,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(36),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 5),
          Expanded(
            child: Container(
              height: double.infinity,
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "search",
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Bouncing(
            onPress: () {},
            child: Container(
              width: 90,
              height: 50,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: customColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(36),
                ),
              ),
              child: IconButton(
                icon: Icon(Icons.display_settings_rounded),
                onPressed: () {
                  _showFilterBottomSheet(context);
                },
              ),
            ),
          ),
          const SizedBox(width: 5),
        ],
      ),
    );
  }

  void _showFilterBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        String selectedCategory = "All"; 
        String selectedRecipeType = "All"; 

        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Filter Options",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.close),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Category selection
                  Text("Category"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildCategoryButton("All", selectedCategory, setState),
                      _buildCategoryButton(
                          "Category 1", selectedCategory, setState),
                      _buildCategoryButton(
                          "Category 2", selectedCategory, setState),
                      // Add more category buttons as needed
                    ],
                  ),
                  const SizedBox(height: 20),
                  Divider(
                    thickness: 1,
                    height: 1,
                  ),
                  const SizedBox(height: 20),
                  // Recipe Type selection
                  Text("Recipe Type"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildRecipeTypeButton(
                          "All", selectedRecipeType, setState),
                      _buildRecipeTypeButton(
                          "Recipe Type 1", selectedRecipeType, setState),
                      _buildRecipeTypeButton(
                          "Recipe Type 2", selectedRecipeType, setState),
                      // Add more recipe type buttons as needed
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Add your save and cancel buttons
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Save the filter options and close the bottom sheet
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          "Save",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Close the bottom sheet without saving changes
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[300],
                          padding: EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildCategoryButton(
    String category,
    String selectedCategory,
    StateSetter setState,
  ) {
    bool isSelected = category == selectedCategory;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = category;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: isSelected ? Colors.blue : Colors.grey[200],
        ),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Text(
          category,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildRecipeTypeButton(
    String recipeType,
    String selectedRecipeType,
    StateSetter setState,
  ) {
    bool isSelected = recipeType == selectedRecipeType;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedRecipeType = recipeType;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: isSelected ? Colors.blue : Colors.grey[200],
        ),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Text(
          recipeType,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
