import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/presentation/views/screens/disputeTransaction.dart';
import 'package:pidoapp/presentation/widgets/largerButton.dart';

import '../../../core/constants/appColors.dart';
import '../../../core/constants/appSizes.dart';

class Transactiondetials extends StatefulWidget {
  const Transactiondetials({super.key});

  @override
  State<Transactiondetials> createState() => _TransactiondetialsState();
}

class _TransactiondetialsState extends State<Transactiondetials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Transaction Details',
          style: Theme.of(
            context,
          ).textTheme.labelLarge?.copyWith(color: AppColors.textPrimaryLight),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.sm,
        ),
        child: Column(
          children: [
            SizedBox(height: 3.h),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.borderTextFormLight),
                borderRadius: BorderRadius.circular(AppRadius.small),
                color: AppColors.mainCardLight,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    'NGN: 300,000.00',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24.sp,
                      height: 1.2,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.food_bank_outlined),
                      SizedBox(width: 5.w),
                      Text(
                        'Access Bank',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.2,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Adeyo Paul',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          height: 1.2,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        '19203948585',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.2,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.h),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Largerbutton(
              width: double.infinity,
              height: 50.h,
              title: 'Share receipt',
              isFilled: true,
              onPressed: () {},
              buttonIcon: Icons.ios_share,
            ),
            SizedBox(height: 16.h),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.borderTextFormLight),
                borderRadius: BorderRadius.circular(AppRadius.small),
                color: AppColors.mainCardLight,
              ),
              child: Padding(
                padding: EdgeInsets.all(AppSpacing.md),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Timestamp',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                fontWeight: FontWeight.w200,
                                color: AppColors.textPrimaryLight,
                              ),
                        ),
                        Text(
                          '30 Sep, 2025',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.textCardSubTitleLight,
                              ),
                        ),
                      ],
                    ),
                    Divider(color: AppColors.borderTextFormLight, height: 0.5),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Transaction ID',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                fontWeight: FontWeight.w200,
                                color: AppColors.textPrimaryLight,
                              ),
                        ),
                        Text(
                          '2232454895406',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.textCardSubTitleLight,
                              ),
                        ),
                      ],
                    ),
                    Divider(color: AppColors.borderTextFormLight, height: 0.5),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Transaction Status',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                fontWeight: FontWeight.w200,
                                color: AppColors.textPrimaryLight,
                              ),
                        ),
                        Text(
                          'Successful',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.textSuccessful,
                              ),
                        ),
                      ],
                    ),
                    Divider(color: AppColors.borderTextFormLight, height: 0.5),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Transaction fee',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                fontWeight: FontWeight.w200,
                                color: AppColors.textPrimaryLight,
                              ),
                        ),
                        Text(
                          'Free',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.textBlue,
                              ),
                        ),
                      ],
                    ),
                    Divider(color: AppColors.borderTextFormLight, height: 0.5),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Transaction type',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                fontWeight: FontWeight.w200,
                                color: AppColors.textPrimaryLight,
                              ),
                        ),
                        Text(
                          'Transfer',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.textCardSubTitleLight,
                              ),
                        ),
                      ],
                    ),
                    Divider(color: AppColors.borderTextFormLight, height: 0.5),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Remark',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                fontWeight: FontWeight.w200,
                                color: AppColors.textPrimaryLight,
                              ),
                        ),
                        Text(
                          'Food',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.textCardSubTitleLight,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: AppSpacing.md),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Disputetransaction(),
                      ),
                    );
                  },
                  child: Text(
                    'Dispute Transaction',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w900,
                      color: AppColors.textError,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
