import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/core/constants/appColors.dart';
import 'package:pidoapp/presentation/views/screens/bottomNav/home.dart';
import 'package:pidoapp/presentation/views/screens/bottomNav/payments.dart';
import 'package:pidoapp/presentation/views/screens/bottomNav/transactions.dart';

import 'bottomNav/profie.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedBottomNavIndex = 0;
  final List<Widget> _pages = [Home(), Payments(), Transactions(), Profile(),];
  @override
  Widget build(BuildContext context) {
    void bottomBarChange(int index) {
      setState(() {
        selectedBottomNavIndex = index;
      });
    }
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedBottomNavIndex,
        onTap: bottomBarChange,
        backgroundColor: AppColors.mainCardLight,
        elevation: 0,
        selectedItemColor: AppColors.textBlue,
        unselectedItemColor: AppColors.iconNotActiveNavLight,
        selectedLabelStyle: TextStyle(
          color: AppColors.buttonPrimaryLight,
          fontWeight: FontWeight.w700,
          fontSize: 12.sp,
          height: 1.33.h,
        ),
        unselectedLabelStyle: TextStyle(
          color: AppColors.iconNotActiveNavLight,
          fontWeight: FontWeight.w700,
          fontSize: 12.sp,
          height: 1.33.h,
        ),
        unselectedIconTheme: IconThemeData(
          color: AppColors.iconNotActiveNavLight,
          size: 24.sp,
        ),
        selectedIconTheme: IconThemeData(
          color: AppColors.textBlue,
          size: 24.sp,
        ),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz_outlined),
            label: 'Payments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
      body: _pages[selectedBottomNavIndex],
    );
  }
}
