import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hw_1/Widgets/TextField_widget.dart';
import 'package:hw_1/pages/Filter_page.dart';
import 'package:hw_1/pages/login_page.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            child: TextFormFieldWidget(
                textHint: 'Search', iconTextFiel: Icons.search_outlined),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color(0xff5d8d80)),
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              )),
              builder: (context) => Center(
                child: FilterPage(),
              ),
            );
          },
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xff5d8d80).withOpacity(0.7),
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Icon(
              Icons.sort,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
