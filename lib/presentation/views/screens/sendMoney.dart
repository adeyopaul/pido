import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/core/constants/appColors.dart';

import '../../../core/constants/appSizes.dart';
import '../../widgets/appButton.dart';
import '../../widgets/textFormField.dart';

class Sendmoney extends StatelessWidget {
  const Sendmoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Send Money',
          style: Theme.of(
            context,
          ).textTheme.labelLarge?.copyWith(color: AppColors.textPrimaryLight),
        ),
        centerTitle: true,
      ),
      body: PageView(
        // physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: AppSpacing.md),
                  child: Text(
                    'Account Number',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: AppSpacing.sm,
                    // bottom: AppSpacing.ms,
                  ),
                  child: Textformfield(
                    title: 'Enter recipient Account Number',
                    isPassword: false,
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.only(top: AppSpacing.ms),
                  child: Text(
                    'Account Bank',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: AppSpacing.sm,
                    bottom: AppSpacing.ms,
                  ),
                  child: Textformfield(title: 'Select Bank', isPassword: false),
                ),

                Spacer(),

                Padding(
                  padding: EdgeInsets.only(bottom: 150.h),
                  child: Elevatedbutton(
                    buttonTitle: 'Proceed',
                    buttonFunction: () {},
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: AppSpacing.md),
                  child: Text(
                    'Account Number',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: AppSpacing.sm,
                    // bottom: AppSpacing.ms,
                  ),
                  child: Textformfield(
                    title: 'Enter recipient Account Number',
                    isPassword: false,
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.only(top: AppSpacing.md),
                  child: Text(
                    'Account Number',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: AppSpacing.sm,
                    // bottom: AppSpacing.ms,
                  ),
                  child: Textformfield(
                    title: 'Enter recipient Account Number',
                    isPassword: false,
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.only(top: AppSpacing.md),
                  child: Text(
                    'Account Number',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: AppSpacing.sm,
                    // bottom: AppSpacing.ms,
                  ),
                  child: Textformfield(
                    title: 'Enter recipient Account Number',
                    isPassword: false,
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.only(top: AppSpacing.ms),
                  child: Text(
                    'Account Bank',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: AppSpacing.sm,
                    bottom: AppSpacing.ms,
                  ),
                  child: Textformfield(title: 'Select Bank', isPassword: false),
                ),

                Spacer(),

                Padding(
                  padding: EdgeInsets.only(bottom: 150.h),
                  child: Elevatedbutton(
                    buttonTitle: 'Proceed',
                    buttonFunction: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
