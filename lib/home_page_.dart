import 'package:bmi_ui_male_female/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'components/calculate_button.dart';
import 'components/card_age.dart';
import 'components/card_height.dart';
import 'components/card_male.dart';
import 'components/result_alert.dart';
import 'utils/app_colors.dart';
import 'utils/app_text.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFemale = false;
  int height = 180;
  int weight = 60;
  int age = 28;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.BgColor,
      appBar: AppBar(
        backgroundColor: AppColor.BgColor,
        centerTitle: true,
        title: const Text(
          AppText.appBarTitle,
          style: AppTextStyle.calcTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: Row(children: [
                StatusCard(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isFemale = false;
                      });
                    },
                    child: Card1(
                        icon: Icons.male,
                        text: AppText.male,
                        isFemale: !isFemale),
                  ),
                ),
                const SizedBox(width: 20),
                StatusCard(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isFemale = true;
                      });
                    },
                    child: Card1(
                        icon: Icons.female,
                        text: AppText.female,
                        isFemale: isFemale),
                  ),
                ),
              ]),
            ),
            const SizedBox(height: 10),
            StatusCard(
              child: CardHeight(
                  height: height,
                  onChanged: (val) {
                    setState(() {
                      height = val.toInt();
                    });
                  }),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Row(children: [
                StatusCard(
                    child: Card2(
                  text: AppText.weight,
                  value: weight,
                  add: (c) {
                    setState(() {
                      weight = c;
                    });
                  },
                  remove: (c) {
                    setState(() {
                      weight = c;
                    });
                  },
                )),
                const SizedBox(width: 20),
                StatusCard(
                    child: Card2(
                  text: AppText.age,
                  value: age,
                  add: (c) {
                    setState(() {
                      age = c;
                    });
                  },
                  remove: (c) {
                    setState(() {
                      age = c;
                    });
                  },
                )),
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
        onTap: () {
          final res = weight / math.pow(height / 100, 2);
          if (res <= 18.4) {
            showMyDialog(context, AppText.thin);
          } else if (res >= 18.5 && res <= 24.9) {
            showMyDialog(context, AppText.normal);
          } else if (res >= 25) {
            showMyDialog(context, AppText.fat);
          } else {
            showMyDialog(context, AppText.sorry);
          }
        },
      ),
    );
  }
}

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Card(color: AppColor.blColor, child: child));
  }
}
