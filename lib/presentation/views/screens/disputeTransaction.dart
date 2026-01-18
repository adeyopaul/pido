import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/core/constants/appSizes.dart';
import 'package:pidoapp/presentation/views/screens/bottomNav/home.dart';
import 'package:pidoapp/presentation/views/screens/bottomNav/transactions.dart';
import 'package:pidoapp/presentation/widgets/largerButton.dart';

import '../../../core/constants/appColors.dart';
import '../../widgets/textFormField.dart';

class Disputetransaction extends StatefulWidget {
  const Disputetransaction({super.key});

  @override
  State<Disputetransaction> createState() => _DisputetransactionState();
}

class _DisputetransactionState extends State<Disputetransaction> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.lg),
          child: Column(
            children: [
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Dispute Transaction',
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w900,
                                  color: AppColors.textPrimaryLight,
                                  fontSize: 16.sp,
                                ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.h),
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
                      Divider(
                        color: AppColors.borderTextFormLight,
                        height: 0.5,
                      ),
                      SizedBox(height: 12.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Amount',
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w200,
                                  color: AppColors.textPrimaryLight,
                                ),
                          ),
                          Text(
                            '#3,000.00',
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.textCardSubTitleLight,
                                ),
                          ),
                        ],
                      ),
                      Divider(
                        color: AppColors.borderTextFormLight,
                        height: 0.5,
                      ),
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
                      Divider(
                        color: AppColors.borderTextFormLight,
                        height: 0.5,
                      ),
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
                      Divider(
                        color: AppColors.borderTextFormLight,
                        height: 0.5,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: AppSpacing.md),
                    child: Text(
                      'Issue',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: AppSpacing.sm,
                  // bottom: AppSpacing.ms,
                ),
                child: Textformfield(title: 'Select Issue', isPassword: false),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: AppSpacing.ms),
                    child: Text(
                      'Narration',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: AppSpacing.sm,
                  bottom: AppSpacing.ms,
                ),
                child: Container(
                  width: double.infinity,
                  height: 80.h,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.tertiary,
                    border: Border.all(color: AppColors.borderTextFormLight),
                    borderRadius: BorderRadius.all(
                      Radius.circular(AppSpacing.sm),
                    ),
                  ),
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: AppSpacing.md,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Largerbutton(
                width: double.infinity,
                height: 48.h,
                title: 'Tap to Upload image',
                isFilled: false,
                onPressed: () {},
                buttonIcon: Icons.ios_share,
              ),
              SizedBox(height: 20.h),
              Largerbutton(
                width: double.infinity,
                height: 48.h,
                title: 'Send',
                isFilled: true,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Transactions()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
