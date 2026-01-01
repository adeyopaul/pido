import 'package:flutter/material.dart';

import '../../../../core/constants/appColors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: Theme.of(
            context,
          ).textTheme.labelLarge?.copyWith(color: AppColors.textPrimaryLight),
        ),
        centerTitle: true,
      ),
      body: Center(child: Text('Profile')),
    );
  }
}
