import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/appColors.dart';
import '../../../../core/constants/appSizes.dart';
import '../../../widgets/largerButton.dart';
import '../../../widgets/moreActionCard.dart';
import '../../../widgets/smallerButton.dart';
import '../../../widgets/transactionsListTile.dart';
import '../notifications.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  final bool containTransactions = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: containTransactions
          ? Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: height * 0.23,
                      color: AppColors.primaryColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: AppSpacing.xxl),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: AppSpacing.md,
                                    // bottom: AppSpacing.xxl,
                                    left: AppSpacing.lg,
                                  ),
                                  child: Container(
                                    width: 45.w,
                                    height: 45.h,
                                    decoration: BoxDecoration(
                                      color: AppColors.mainCardLight,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.person_outline,
                                      size: AppSpacing.xl,
                                      color: AppColors.iconSecondaryLight,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: AppSpacing.wl,
                                    left: AppSpacing.sm,
                                  ),
                                  child: Text(
                                    'Welcome, Adeyo',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.onPrimary,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: AppSpacing.xl,
                              right: AppSpacing.lg,
                            ),
                            child: Icon(
                              Icons.notifications_none_outlined,
                              size: AppSpacing.xl,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          color: AppColors.backgroundLight,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppSpacing.lg,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: height * 0.14),
                                  child: Text(
                                    'More Actions',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          color: AppColors.textCardTitleLight,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Moreactioncard(
                                      width: 96.w,
                                      height: 80.h,
                                      title: 'Buy Airtime',
                                      cardIcon: Icons.phone_android_outlined,
                                    ),
                                    Moreactioncard(
                                      width: 96.w,
                                      height: 80.h,
                                      title: 'Buy Data',
                                      cardIcon: Icons.wifi,
                                    ),
                                    Moreactioncard(
                                      width: 96.w,
                                      height: 80.h,
                                      title: 'Pay Bills',
                                      cardIcon: Icons.event_note_outlined,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Recent Transactions',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                              color:
                                                  AppColors.textCardTitleLight,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'View all',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                color: AppColors.primaryColor,
                                                fontWeight: FontWeight.w900,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                Container(
                                  child: Column(
                                    children: [
                                      Transactionslisttile(),
                                      SizedBox(height: 8.h),
                                      Transactionslisttile(),
                                      SizedBox(height: 8.h),
                                      Transactionslisttile(),
                                      SizedBox(height: 8.h),
                                      Transactionslisttile(),
                                      SizedBox(height: 8.h),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: height * 0.145,
                  left: AppSpacing.lg,
                  right: AppSpacing.lg,
                  child: Container(
                    // height: height * 0.28,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.borderCardLight),
                      borderRadius: BorderRadius.all(
                        Radius.circular(AppRadius.small),
                      ),
                      color: AppColors.mainCardLight,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSpacing.md,
                        vertical: AppSpacing.ms,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Balance',
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(AppRadius.medium),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: AppSpacing.xxs,
                                    horizontal: AppSpacing.sm,
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.visibility,
                                        color: AppColors.textDisplaySmall,
                                        size: AppIcons.ms,
                                      ),
                                      Text(
                                        '  Show',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall
                                            ?.copyWith(
                                              color: AppColors.textDisplaySmall,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
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
                                  text: 'NGN ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge
                                      ?.copyWith(
                                        color: AppColors.textPrimaryLight,
                                      ),
                                ),
                                TextSpan(
                                  text: '98,000,000.00',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge
                                      ?.copyWith(
                                        color: AppColors.textPrimaryLight,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: AppSpacing.sm),
                            child: Row(
                              children: [
                                Text(
                                  'Account Number:',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.headlineSmall,
                                ),
                                Text(
                                  '  2145809712',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(fontWeight: FontWeight.w700),
                                ),
                                SizedBox(width: AppSpacing.ms),
                                Icon(Icons.copy_outlined, size: AppIcons.md),
                              ],
                            ),
                          ),
                          SizedBox(height: AppSpacing.lg),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Smallerbutton(
                                width: 134.w,
                                height: 40.h,
                                title: 'Add Money',
                                onPressed: () {},
                                buttonIcon: Icons.arrow_downward_outlined,
                                isFilled: false,
                              ),
                              Smallerbutton(
                                width: 134.w,
                                height: 40.h,
                                title: 'Send Money',
                                onPressed: () {},
                                buttonIcon: Icons.swap_horiz_outlined,
                                isFilled: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          : Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: height * 0.23,
                      color: AppColors.primaryColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: AppSpacing.xxl),
                            child: Text(
                              'Transactions',
                              style: Theme.of(context).textTheme.labelLarge
                                  ?.copyWith(
                                    color: Theme.of(context).colorScheme.onPrimary,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          color: AppColors.backgroundLight,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppSpacing.lg,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
