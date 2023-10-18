import 'package:bmi_ui_male_female/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Sliders extends StatefulWidget {
  const Sliders({Key? key}) : super(key: key);

  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  double currentSliderValue = 160;

  @override
  Widget build(BuildContext context) {
    return Slider(
      activeColor: AppColor.whColor,
      inactiveColor: AppColor.glColor,
      thumbColor: AppColor.redColor,
      value: currentSliderValue,
      max: 200,
      divisions: 200,
      label: currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          currentSliderValue = value;
        });
      },
    );
  }
}
