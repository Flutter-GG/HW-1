import 'package:flutter/material.dart';
import 'custom_text.dart';



class CustomVerticalContiner extends StatelessWidget {
  const CustomVerticalContiner({super.key, 
            required this.title, required this.path});

  final String? title;
  final String? path;


  @override
  Widget build(BuildContext context) {
    return Container(
            width: MediaQuery.sizeOf(context).width - 280,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), 
              color: Colors.white,
              boxShadow: const [BoxShadow(
                color: Color.fromARGB(65, 158, 158, 158),
                blurRadius: 7,
                spreadRadius: 5,
              )],
              ),
            
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    path!,
                    width: MediaQuery.of(context).size.width,
                
                    ),
                ),


                const SizedBox(height: 10,),
                 
                CustomText(
                    title: title!,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    textColor: Colors.grey[800],
                    ellipsis: true,
                 ),

              ]
            ),
          );
  }
}