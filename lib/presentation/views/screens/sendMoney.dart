import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/core/constants/appColors.dart';
import 'package:pidoapp/core/constants/theme/textTheme.dart';
import 'package:pidoapp/presentation/views/screens/confirmDetails.dart';

import '../../../core/constants/appSizes.dart';
import '../../widgets/appButton.dart';
import '../../widgets/textFormField.dart';

class Sendmoney extends StatelessWidget {
  const Sendmoney({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController sendMoneyController = PageController();
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
        controller: sendMoneyController,
        physics: NeverScrollableScrollPhysics(),
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
                    title: 'Enter recipient Account Number',
                    isPassword: false,
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.only(top: AppSpacing.ms),
                  child: Text(
                    'Account Bank',
                    style: Theme.of(
                      context,
                    ).textTheme.headlineMedium?.copyWith(fontSize: 14.sp),
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
                    buttonFunction: () {
                      sendMoneyController.nextPage(
                        duration: Duration(milliseconds: 20),
                        curve: Curves.bounceInOut,
                      );
                    },
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
                    title: 'Enter recipient Account Number',
                    isPassword: false,
                  ),
                ),
                SizedBox(height: 5.h),
                Padding(
                  padding: EdgeInsets.only(top: AppSpacing.md),
                  child: Text(
                    'Account Bank',
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
                  child: Textformfield(title: 'Select Bank', isPassword: false),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text('Adeyo Paul')],
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
                              style: Theme.of(context).textTheme.headlineMedium
                                  ?.copyWith(fontSize: 14.sp),
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
                  child: Textformfield(
                    title: 'How much do you want to transfer',
                    isPassword: false,
                  ),
                ),
                SizedBox(height: 5.h),
                Padding(
                  padding: EdgeInsets.only(top: AppSpacing.ms),
                  child: Text(
                    'Narration',
                    style: Theme.of(
                      context,
                    ).textTheme.headlineMedium?.copyWith(fontSize: 14.sp),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: AppSpacing.sm,
                    bottom: AppSpacing.ms,
                  ),
                  child: Textformfield(
                    title: 'Message for recipient',
                    isPassword: false,
                  ),
                ),

                Spacer(),

                Padding(
                  padding: EdgeInsets.only(bottom: 150.h),
                  child: Elevatedbutton(
                    buttonTitle: 'Proceed',
                    buttonFunction: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Confirmdetails(),
                        ),
                      );
                    },
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
