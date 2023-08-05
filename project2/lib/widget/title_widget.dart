import 'package:flutter/widgets.dart';
import 'package:project2/widget/text_button_widget.dart';

import '../colors/colors.dart';
import 'bold_text.dart';

class title_widget extends StatelessWidget {
  const title_widget({
    super.key,
    required this.title,
    required this.titleInTextButton,
  });
  final String title;
  final String titleInTextButton;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        children: [
          bold_text(
            TextName: title,
            TextSize: 25,
          ),
          SizedBox(
            width: 110,
          ),
          text_button_widget(
            TextInButton: titleInTextButton,
            buttonColor: AppColors.primary_color,
            TextSize: 20,
          ),
        ],
      ),
    );
  }
}
