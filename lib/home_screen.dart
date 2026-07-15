import 'package:flutter/material.dart';
import 'package:football_ui_app/colors.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kwhiteColor,
      appBar: appBar(),

      body: Column(children: [liveMatchText()]),
    );
  }

  Padding liveMatchText() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Text(
            "Live Match",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: Colors.black54,
              letterSpacing: -1.5,
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.kwhiteColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black12.withValues(alpha: 0.08),
                ),
              ],
            ),
            child: Row(
              children: [
                //TODOV ADD IMAGE Image.asset(name;,height: 30,width: 30,)
                SizedBox(width: 3),
                Text(
                  "Premier League",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.kblackColor,
                    letterSpacing: -1,
                  ),
                ),
                SizedBox(width: 3),
                Icon(Icons.keyboard_arrow_down_outlined),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: AppColors.kwhiteColor,
      actions: [
        SizedBox(width: 20),
        Padding(
          padding: EdgeInsets.all(5),
          child: Material(
            elevation: 0.2,
            borderRadius: BorderRadius.circular(5),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.kwhiteColor,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Iconsax.category),
            ),
          ),
        ),
        const Spacer(),
        Row(
          children: [
            Text(
              "S",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                letterSpacing: -2,
              ),
            ),
            Icon(Icons.sports_soccer, color: AppColors.kpreamaryColor),
            Text(
              "ccer",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                letterSpacing: -2,
              ),
            ),
            Text(
              " Nerds",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                letterSpacing: -2,
                color: AppColors.kpreamaryColor,
              ),
            ),
          ],
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.all(5),
          child: Material(
            elevation: 0.2,
            borderRadius: BorderRadius.circular(5),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.kwhiteColor,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Iconsax.notification),
            ),
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
