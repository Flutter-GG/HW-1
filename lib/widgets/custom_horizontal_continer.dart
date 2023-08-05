import 'package:flutter/material.dart';
import 'custom_icon_button.dart';
import 'custom_text.dart';



class CustomHorizontalContiner extends StatelessWidget {
  const CustomHorizontalContiner({super.key, 
            required this.title, required this.recipeImgPath, this.chefImgPath, this.chefName});

  final String? title;
  final String? recipeImgPath;
  final String? chefImgPath;
  final String? chefName;


  @override
  Widget build(BuildContext context) {
    return Container(
            //About Container specification 
            width: MediaQuery.sizeOf(context).width ,
            margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 8),
            padding: const EdgeInsets.symmetric(vertical:10, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), 
              color: Colors.white,
              boxShadow: const [BoxShadow(
                color: Color.fromARGB(65, 158, 158, 158),
                blurRadius: 7,
                spreadRadius: 5,
              )],
              ),
            
            // The main Row, which contain: (Recipe Img, Description, Chef detiles, Icon for more info)
            child: Row(
              children: [

                // Recipe image section 
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    recipeImgPath!,
                    width: MediaQuery.of(context).size.width - 290,
                
                    ),
                ),

                const SizedBox(width: 10,),
                
                //Description & chef details Column
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        CustomText(
                          title: title!,
                          fontSize: 17,
                          
                          fontWeight: FontWeight.bold,
                          textColor: Colors.grey[800],
                       ),
                
                      const SizedBox(height: 15,),
                
                      //Chef icon & name
                      Row(
                        children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(150),
                              child: Image.asset(
                                // "assets/img/women_icon.jpeg",
                                chefImgPath!,
                                width: MediaQuery.of(context).size.width - 365,
                                ),
                            ),
                
                            const SizedBox(width: 5,),
                            CustomText(title: chefName!,),
                      ],
                    )
                    ],
                  ),
                ),

                // Icon for exploring more about the recipe
                const CustomIconButton(
                  color: 0xfff2b25b, icon: Icons.arrow_circle_right_outlined,
                  widthSubtraction: 400, width: 40, borderRadius: 20,
                  ),
        ],
      ),
    );
  }
}