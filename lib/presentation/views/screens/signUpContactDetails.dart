import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/appSizes.dart';
import '../../widgets/circularProgress.dart';
import '../../widgets/textFormField.dart';

class Signupcontactdetails extends StatelessWidget {
  const Signupcontactdetails({super.key});

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
                        'Contact Details',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ],
                  ),
                  CircularStepIndicator(currentStep: 2, totalSteps: 4),
                ],
              ),
            ),
            SizedBox(height: 6.h),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.md),
              child: Text(
                'Phone Number',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: AppSpacing.sm,
                // bottom: AppSpacing.ms,
              ),
              child: Textformfield(
                title: 'Enter your Phone Number',
                isPassword: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.ms),
              child: Text(
                'Email Address',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.sm, bottom: AppSpacing.ms),
              child: Textformfield(
                title: 'Enter your Email Address',
                isPassword: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.xs),
              child: Text(
                'State',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.sm, bottom: AppSpacing.ms),
              child: Textformfield(
                title: 'Enter your State',
                isPassword: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.xs),
              child: Text(
                'LGA',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.sm, bottom: AppSpacing.ms),
              child: Textformfield(
                title: 'Enter your LGA',
                isPassword: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.xs),
              child: Text(
                'Address',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.sm, bottom: AppSpacing.ms),
              child: Textformfield(
                title: 'Enter your Address',
                isPassword: false,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
