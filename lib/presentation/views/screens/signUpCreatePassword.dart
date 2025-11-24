import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/core/constants/appColors.dart';
import 'package:pidoapp/presentation/views/screens/signIn.dart';
import 'package:pidoapp/presentation/views/screens/welcomeBack.dart';

import '../../../core/constants/appSizes.dart';
import '../../widgets/appButton.dart';
import '../../widgets/circularProgress.dart';
import '../../widgets/textFormField.dart';

class Signupcreatepassword extends StatelessWidget {
  const Signupcreatepassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.md),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign up',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      Text(
                        'Create Password',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ],
                  ),
                  CircularStepIndicator(currentStep: 4, totalSteps: 4),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: AppSpacing.md),
                  child: Text(
                    'New Password',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: AppSpacing.sm,
                    // bottom: AppSpacing.ms,
                  ),
                  child: Textformfield(title: '..........', isPassword: true),
                ),
                Padding(
                  padding: EdgeInsets.only(top: AppSpacing.xs),
                  child: Text(
                    'Password should be maximum of 8 characters (at least 1 Uppercase Letter,1 Number, and 1 Symbol)',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontSize: 11.sp,
                      color: AppColors.borderActiveLight,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: AppSpacing.sm),
                  child: Text(
                    'Confirm Password',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: AppSpacing.sm,
                    bottom: AppSpacing.ms,
                  ),
                  child: Textformfield(title: '............', isPassword: true),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
