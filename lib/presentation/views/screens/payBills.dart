import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/core/constants/appSizes.dart';
import 'package:pidoapp/presentation/views/screens/cable_TV.dart';
import 'package:pidoapp/presentation/views/screens/electricity.dart';
import 'package:pidoapp/presentation/views/screens/internet.dart';
import 'package:pidoapp/presentation/widgets/billsTile.dart';

import '../../../core/constants/appColors.dart';

class Paybills extends StatelessWidget {
  const Paybills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pay Bills',
          style: Theme.of(
            context,
          ).textTheme.labelLarge?.copyWith(color: AppColors.textPrimaryLight),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select a bill you want to buy',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.textCardSubTitleLight,
              ),
            ),
            Billstile(
              title: 'Internet',
              tileIcon: Icons.wifi,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Internet()),
                );
              },
            ),
            Billstile(
              title: "Electricity",
              tileIcon: Icons.lightbulb_outline_sharp,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Electricity()),
                );
              },
            ),
            Billstile(
              title: 'Cable TV',
              tileIcon: Icons.tv,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CableTv()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
