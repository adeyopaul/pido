import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/core/constants/appColors.dart';
import 'package:pidoapp/presentation/widgets/otp.dart';

import '../../../core/constants/appSizes.dart';
import '../../widgets/circularProgress.dart';
import '../../widgets/textFormField.dart';

class Signupverification extends StatelessWidget {
  const Signupverification({super.key});

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
                        'Verification',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ],
                  ),
                  CircularStepIndicator(currentStep: 3, totalSteps: 4),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.md),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Enter the 6-digit verification code sent to',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      'your phone number 220133****',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
            ), //
            SizedBox(height: 16.h),
            Center(
              child: Text(
                'Enter OTP',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Otp(),
                SizedBox(width: 4.w),
                Otp(),
                SizedBox(width: 4.w),
                Otp(),
                SizedBox(width: 4.w),
                Otp(),
                SizedBox(width: 4.w),
                Otp(),
                SizedBox(width: 4.w),
                Otp(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
