import 'package:bmi_ui_male_female/utils/app_colors.dart';
import 'package:bmi_ui_male_female/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1(
      {super.key,
      required this.icon,
      required this.text,
      required this.isFemale});
  final IconData icon;
  final String text;
  final bool isFemale;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 80, color: !isFemale ? AppColor.grColor : null),
        Text(text, style: AppTextStyle.maleTextStyle),
      ],
    );
  }
}
