import 'package:flutter/material.dart';
import 'package:football_ui_app/colors.dart';
import 'package:football_ui_app/home_screen.dart';
import 'package:football_ui_app/strings.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class MyBottomNavigationBarItems extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function() onTap;
  final IconData iconData;
  const MyBottomNavigationBarItems({
    super.key,
    required this.title,
    required this.isActive,
    required this.onTap,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isActive ? AppColors.kpreamaryColor : AppColors.kwhiteColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          children: [
            Icon(
              iconData,
              color: isActive
                  ? AppColors.kwhiteColor
                  : AppColors.kGreyColor.shade200,
            ),
            if (isActive) ...[
              Text(
                title,
                style: TextStyle(color: AppColors.kwhiteColor, fontSize: 14),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  int currentIndex = 0;
  final List<Widget> screens = [
    HomeScreen(),
    Scaffold(backgroundColor: Colors.yellow),
    Scaffold(backgroundColor: Colors.green),
    Scaffold(backgroundColor: Colors.pink),
  ];
  final List<IconData> icons = [
    Iconsax.home,
    Iconsax.calendar_1,
    Iconsax.chart,
    Icons.person_outline,
  ];

  final titles = [
    AppStrings.home,
    AppStrings.calender,
    AppStrings.standing,
    AppStrings.account,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: Container(
          height: 80,
          padding: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            color: AppColors.kwhiteColor,
            boxShadow: [
              BoxShadow(
                color: AppColors.kblackColor..withValues(alpha: 0.015),
                blurRadius: 8,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              4,
              (index) => MyBottomNavigationBarItems(
                title: titles[index],
                isActive: index == currentIndex,
                onTap: () => setState(() {
                  currentIndex = index;
                }),
                iconData: icons[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
