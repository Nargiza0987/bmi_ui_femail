import 'package:bmi_ui_male_female/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CardMale extends StatelessWidget {
  const CardMale({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: AppColor.brColor,
        child: Column(
          children: [
            Icon(icon, size: 70),
            SizedBox(height: 8),
            Text(
              text,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
