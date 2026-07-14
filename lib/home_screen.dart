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
