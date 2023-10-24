import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text.dart';
import '../utils/app_text_style.dart';

Future<void> showMyDialog(BuildContext context, String text) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      backgroundColor: AppColor.BgColor,
      title: const Center(
        child: Text(AppText.appBarTitle, style: AppTextStyle.calcTextStyle),
      ),
      content: Text(
        text,
        style: AppTextStyle.calcTextStyle,
        textAlign: TextAlign.center,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(AppText.backButton),
        ),
      ],
    ),
  );
}
