import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/core/constants/appSizes.dart';

import '../../widgets/circularProgress.dart';
import '../../widgets/textFormField.dart';

class Signuppersonaldetails extends StatelessWidget {
  const Signuppersonaldetails({super.key});

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
                        'Personal Details',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ],
                  ),
                  CircularStepIndicator(currentStep: 1, totalSteps: 4),
                ],
              ),
            ),
            SizedBox(height: 6.h),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.md),
              child: Text(
                'First Name',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: AppSpacing.sm,
                // bottom: AppSpacing.ms,
              ),
              child: Textformfield(
                title: 'Enter your First name',
                isPassword: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.ms),
              child: Text(
                'Last Name',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.sm, bottom: AppSpacing.ms),
              child: Textformfield(
                title: 'Enter your Last name',
                isPassword: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.xs),
              child: Text(
                'Date of Birth',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.sm, bottom: AppSpacing.ms),
              child: Textformfield(
                title: 'Enter your Date of Birth',
                isPassword: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.xs),
              child: Text(
                'BVN',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.sm, bottom: AppSpacing.ms),
              child: Textformfield(
                title: 'Enter your BVN',
                isPassword: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
