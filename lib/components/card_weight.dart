import 'package:bmi_ui_male_female/utils/app_colors.dart';
import 'package:bmi_ui_male_female/utils/app_text.dart';
import 'package:flutter/material.dart';

class CardWeight extends StatefulWidget {
  CardWeight({
    super.key,
    required this.weighter,
  });
  final int weighter;
  @override
  State<CardWeight> createState() => _CardWeightState();
}

class _CardWeightState extends State<CardWeight> {
  int weighter = 60;

  void incrementWeighter() {
    setState(() {
      weighter++;
    });
  }

  void uncrementWeighter() {
    setState(() {
      weighter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: AppColor.brColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppText.weight,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(
              '$weighter',
              style: TextStyle(fontSize: 37, fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton.small(
                  hoverColor: Colors.blue,
                  splashColor: AppColor.redColor,
                  foregroundColor: AppColor.whColor,
                  onPressed: uncrementWeighter,
                  tooltip: 'Decrease',
                  child: Icon(Icons.remove),
                  backgroundColor: AppColor.grColor,
                ),
                SizedBox(width: 10),
                FloatingActionButton.small(
                  hoverColor: Colors.blue,
                  splashColor: AppColor.redColor,
                  foregroundColor: AppColor.whColor,
                  onPressed: incrementWeighter,
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                  backgroundColor: AppColor.grColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
