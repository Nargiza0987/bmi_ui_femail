import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_text.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          print('basyldy');
          showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: Text('Жыйынтык'),
              content: Text('нормалдуу'),
              actions: <Widget>[
                TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: Text('Cancel')),
                TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: Text('OK')),
              ],
            ),
          );
        },
        child: Container(
          height: 50,
          width: double.infinity,
          color: AppColor.redColor,
          child: Center(
            child: Text(
              AppText.calculate,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
          ),
        ));
  }
}
