import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/appColors.dart';
import '../../../core/constants/appSizes.dart';
import '../../../core/constants/theme/textTheme.dart';
import '../../widgets/appButton.dart';
import '../../widgets/textFormField.dart';
import 'confirmDetails.dart';

class Electricity extends StatelessWidget {
  const Electricity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Electricity',
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
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.md),
              child: Text(
                'Service Provider',
                style: Theme.of(
                  context,
                ).textTheme.headlineMedium?.copyWith(fontSize: 14.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: AppSpacing.sm,
                // bottom: AppSpacing.ms,
              ),
              child: Textformfield(
                title: 'Select Service Provider',
                isPassword: false,
              ),
            ),
            SizedBox(height: 5.h),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.md),
              child: Text(
                'Meter Number',
                style: Theme.of(
                  context,
                ).textTheme.headlineMedium?.copyWith(fontSize: 14.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: AppSpacing.sm,
                // bottom: AppSpacing.ms,
              ),
              child: Textformfield(
                title: 'Enter Meter number',
                isPassword: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.md),
              child: Text(
                'Bill Plan',
                style: Theme.of(
                  context,
                ).textTheme.headlineMedium?.copyWith(fontSize: 14.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: AppSpacing.sm,
                // bottom: AppSpacing.ms,
              ),
              child: Textformfield(
                title: 'Select Plan',
                isPassword: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.md),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Amount',
                    style: Theme.of(
                      context,
                    ).textTheme.headlineMedium?.copyWith(fontSize: 14.sp),
                  ),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headlineMedium
                          ?.copyWith(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'Balance ',
                          style: Theme.of(
                            context,
                          ).textTheme.headlineMedium?.copyWith(fontSize: 14.sp),
                        ),
                        TextSpan(
                          text: 'NGN: 200,000.00',
                          style: AppTextStyles.hint2.copyWith(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: AppSpacing.sm,
                // bottom: AppSpacing.ms,
              ),
              child: Textformfield(title: 'Enter amount', isPassword: false),
            ),
            SizedBox(height: 5.h),

            Spacer(),

            Padding(
              padding: EdgeInsets.only(bottom: 150.h),
              child: Elevatedbutton(
                buttonTitle: 'Proceed',
                buttonFunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Confirmdetails()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
