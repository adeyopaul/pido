import 'package:flutter/material.dart';

import '../../../../core/constants/appColors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: height * 0.8,
          color: AppColors.backgroundLight,
        ),
      ),
    );
  }
}
