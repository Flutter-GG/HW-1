import 'package:flutter/material.dart';
import 'package:health_food/widgets/textWidgets.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key, required this.text, this.bgColor,  this.fgColor,   this.isFilter= false, this.onPressed,  this.width=80,});
 final String text;
  final Color? bgColor;
  final Color? fgColor;
  final bool isFilter;
  final Function()? onPressed;
  final double width;
  @override
  Widget build(BuildContext context) {
    
    return  ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(const Size.fromWidth(80)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        backgroundColor: MaterialStateProperty.all(bgColor ?? const Color(0Xff70B9BE)),
      ),
      onPressed: onPressed,
      child: !isFilter
          ? TextWidget(
              text: text,
              color: Colors.white,
          )
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: Image.network(
                'https://static.vecteezy.com/system/resources/thumbnails/009/008/831/small/of-filter-icon-filter-logo-isolated-on-white-background-free-vector.jpg',

                width: 30,
                height: 30,
                color: Colors.white,
              )),
    );
  }
}