import 'package:flutter/material.dart';
import 'components/calculate_button.dart';
import 'components/card_age.dart';
import 'components/card_height.dart';
import 'components/card_male.dart';
import 'components/card_weight.dart';
import 'utils/app_colors.dart';
import 'utils/app_text.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.BgColor,
      appBar: AppBar(
        backgroundColor: AppColor.BgColor,
        centerTitle: true,
        title: Text(
          AppText.appBarTitle,
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(children: [
                CardMale(icon: Icons.male, text: AppText.male),
                SizedBox(width: 20),
                CardMale(icon: Icons.female, text: AppText.female),
              ]),
            ),
            SizedBox(height: 20),
            Expanded(
              child: CardHeight(),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Row(children: [
                CardWeight(weighter: 60),
                SizedBox(width: 20),
                CardAge(ager: 25),
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(),
    );
  }
}
