import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text.dart';

class CardAge extends StatefulWidget {
  const CardAge({
    super.key,
    required this.ager,
  });

  final int ager;
  @override
  State<CardAge> createState() => _CardAgeState();
}

class _CardAgeState extends State<CardAge> {
  int ager = 25;

  void incrementAger() {
    setState(() {
      ager++;
    });
  }

  void uncrementAger() {
    setState(() {
      ager--;
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
              AppText.age,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(
              '$ager',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton.small(
                  hoverColor: Colors.blue,
                  splashColor: AppColor.redColor,
                  foregroundColor: AppColor.whColor,
                  onPressed: uncrementAger,
                  tooltip: 'Decrease',
                  child: Icon(Icons.remove),
                  backgroundColor: AppColor.grColor,
                ),
                SizedBox(width: 10),
                FloatingActionButton.small(
                  hoverColor: Colors.blue,
                  splashColor: AppColor.redColor,
                  foregroundColor: AppColor.whColor,
                  onPressed: incrementAger,
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
