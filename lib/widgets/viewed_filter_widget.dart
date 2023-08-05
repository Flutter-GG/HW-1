import 'package:flutter/material.dart';
import 'package:lets_cooking/widgets/custom_text.dart';
import 'custom_button.dart';
import 'custom_row_buttons.dart';

//This widget for showing a bottom sheet for filtring process

class ShowFilterSheet extends StatefulWidget {
  const ShowFilterSheet({super.key});

  @override
  State<ShowFilterSheet> createState() => _ShowFilterSheetState();
}

class _ShowFilterSheetState extends State<ShowFilterSheet> {
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton( //The icon for displaying the sheet
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width - 340, 60),
                  backgroundColor: const Color(0xfff2b25b),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                icon: const Icon(Icons.auto_awesome_mosaic_outlined),

                onPressed: (){
                  showModalBottomSheet(
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        ),
                    ),
                    
                    context: context, 
                    builder: (BuildContext context){  //Build a widget 
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.75, //fill 75% of the screen wiht a sheet
                        padding: const EdgeInsets.symmetric(vertical: 30 , horizontal: 15),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            //Title on the top
                            Center(child: CustomText(title: "Filter", fontSize: 25, align: TextAlign.center,fontWeight: FontWeight.bold,)),
                      
                            SizedBox(height: 15,),
                      
                            CustomText(title: "Category", fontSize: 20, fontWeight: FontWeight.bold, align: TextAlign.left,),
                      
                            SizedBox(height: 10,),

                            //Call the custom row of byttons widget
                            RowOfButtons(buttonTitle1: "Breakfast", buttonTitle2: "Lunch", buttonTitle3: "Dinner"),
                      
                            SizedBox(height: 20 ,),

                            CustomText(title: "Recipe Type", fontSize: 20, fontWeight: FontWeight.bold, align: TextAlign.left,),
                            
                            SizedBox(height: 10,),
                            
                            RowOfButtons(buttonTitle1: "Salad", buttonTitle2: "Egg", buttonTitle3: "Cake"),
                      
                            SizedBox(height: 10,),

                            RowOfButtons(buttonTitle1: "Cheickn", buttonTitle2: "Meals", buttonTitle3: "Vegetables"),
                            
                            SizedBox(height: 120,),

                            //Create 
                            CustomButton(
                              title: "Apply Filter", buttonColor: 0xff04232a,
                              fontSize: 17, borderRadius: 15,
                            ),

                            SizedBox(height: 10,),
                            
                            CustomButton(
                              title: "Clear Filter", buttonColor: 0xFFFFFFFF,
                              fontSize: 17, borderRadius: 15, textColor: Color(0xFF080808), 
                            ),
                          ],
                        ),
                      );
                    }
                  );
                },
      )
    );
  }
}