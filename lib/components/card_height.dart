import 'package:bmi_ui_male_female/utils/app_colors.dart';
import 'package:bmi_ui_male_female/utils/app_text.dart';
import 'package:flutter/material.dart';

class CardHeight extends StatefulWidget {
  const CardHeight({
    super.key,
  });

  @override
  State<CardHeight> createState() => _CardHeightState();
}

class _CardHeightState extends State<CardHeight> {
  double currentSliderValue = 160;
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.brColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            AppText.height,
            style: TextStyle(fontSize: 25, color: AppColor.whColor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '$currentSliderValue',
                style: TextStyle(fontSize: 36, color: AppColor.whColor),
              ),
              Text(
                AppText.cm,
                style: TextStyle(
                    fontSize: 18, color: AppColor.whColor, height: 2.4),
              ),
            ],
          ),
          Slider(
            activeColor: AppColor.whColor,
            inactiveColor: AppColor.grColor,
            thumbColor: AppColor.redColor,
            value: currentSliderValue,
            min: 40,
            max: 240,
            divisions: 200,
            label: currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                currentSliderValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
