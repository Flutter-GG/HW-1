import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Screen/meal_screen.dart';
import 'bold_text.dart';

class container_food extends StatelessWidget {
  const container_food({
    super.key,
    required this.img,
    required this.mealName,
  });
  final String img;
  final String mealName;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => meal_screen(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: Colors.grey,
              width: 0.3,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 8),
              bold_text(
                TextName: mealName,
                TextSize: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
