import 'package:flutter/material.dart';
import 'package:hw_1/models/editors_choice_list.dart';

class dishes extends StatelessWidget {
  final plate dish;
  const dishes({Key? key, required this.dish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
       shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
      //set border radius more than 50% of height and width to make circle
  ),
      color: Colors.white,
      child: ListTile(
        leading: ClipRRect(
           borderRadius: BorderRadius.circular(10),
           
          child: Image.network(
            fit: BoxFit.fill,
            dish.foodImage,
            height: 90,
            width: 90,
          ),
        ),
        title: Center(
            child: Text(dish.name,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14))),
        subtitle: Center(
            child: Text(dish.chef,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 12))),
        trailing: Icon( Icons.arrow_circle_right_sharp, ),
       
      ),
    );
  }
}
