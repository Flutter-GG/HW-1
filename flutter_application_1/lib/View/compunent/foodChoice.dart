import 'package:flutter/material.dart';

class foodChoice extends StatelessWidget {
  const foodChoice({
    super.key,
    required this.imagePath,
    required this.foodDiscribction,
    required this.person,
    required this.personName,
  });
  final String imagePath;
  final String foodDiscribction;
  final String person;
  final String personName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 0.1,
            blurRadius: 1,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        foodDiscribction,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: SizedBox.fromSize(
                            size: Size(30, 30),
                            child: Material(
                              color: const Color.fromARGB(255, 2, 2, 2),
                              child: InkWell(
                                splashColor: Colors.white,
                                onTap: () {},
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ), // <-- Icon
                                  ],
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80, top: 10),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            person,
                            width: 30,
                            height: 30,
                            fit: BoxFit.cover,
                            //  alignment: Alignment.center,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(personName)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//"Easy homemode \n beef burger"