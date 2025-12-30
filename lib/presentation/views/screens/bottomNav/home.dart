import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/core/constants/theme/textTheme.dart';
import 'package:pidoapp/presentation/views/screens/notifications.dart';
import 'package:pidoapp/presentation/widgets/largerButton.dart';
import 'package:pidoapp/presentation/widgets/transactionsListTile.dart';

import '../../../../core/constants/appColors.dart';
import '../../../../core/constants/appSizes.dart';
import '../../../widgets/moreActionCard.dart';
import '../../../widgets/smallerButton.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final bool containTransactions = false;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final width = MediaQuery.of(context).size.width;
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
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Notifications(),
                                  ),
                                );
                              },
                              child: Icon(
                                Icons.notifications_none_outlined,
                                size: AppSpacing.xl,
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
                          // height: height * 0.75,
                          color: AppColors.backgroundLight,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppSpacing.lg,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: height * 0.205),
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
                                Container(
                                  height: 230,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.no_backpack_outlined,
                                          size: 50,
                                          color: AppColors.primaryColor,
                                        ),
                                        Text(
                                          'No recent transactions!',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                color: AppColors
                                                    .textCardTitleLight,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
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
                                  text: '0.00',
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
                                onPressed: () {
                                  showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(AppRadius.medium),
                                      ),
                                    ),
                                    builder: (context) {
                                      return Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: AppColors.mainCardLight,
                                          borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(
                                              AppRadius.medium,
                                            ),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                            AppSpacing.lg,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              //Fund account Text
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Fund your Pido account below via \nbank transfer',
                                                    textAlign: TextAlign.start,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelLarge
                                                        ?.copyWith(height: 1.2),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_outlined,
                                                      size: AppIcons.xl,
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              //Spacing
                                              SizedBox(height: 24.h),

                                              //Bank Name Row
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.food_bank_outlined,
                                                    size: AppIcons.md,
                                                  ),
                                                  SizedBox(width: 16.w),
                                                  Container(
                                                    width: 102.w,
                                                    child: Text(
                                                      'Bank Name',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .displaySmall
                                                          ?.copyWith(
                                                            color: AppColors
                                                                .primaryColor,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 2.w,
                                                    ),
                                                    child: Text(
                                                      'Pido',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                            color: AppColors
                                                                .primaryColor,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 16.h),
                                                ],
                                              ),

                                              //Account Number
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.numbers,
                                                    size: AppIcons.md,
                                                  ),
                                                  SizedBox(width: 16.w),
                                                  Container(
                                                    width: 102.w,
                                                    child: Text(
                                                      'Account Number',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .displaySmall
                                                          ?.copyWith(
                                                            color: AppColors
                                                                .primaryColor,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 2.w,
                                                    ),
                                                    child: Text(
                                                      '1234567890',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                            color: AppColors
                                                                .primaryColor,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.copy,
                                                      size: AppIcons.md,
                                                    ),
                                                  ),
                                                  SizedBox(height: 16.h),
                                                ],
                                              ),

                                              //Account Name
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.person_outline,
                                                    size: AppIcons.md,
                                                  ),
                                                  SizedBox(width: 16.w),
                                                  Container(
                                                    width: 102.w,
                                                    child: Text(
                                                      'Account Name',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .displaySmall
                                                          ?.copyWith(
                                                            color: AppColors
                                                                .primaryColor,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 2.w,
                                                    ),
                                                    child: Text(
                                                      'Adeyo Paul',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                            color: AppColors
                                                                .primaryColor,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 16.h),
                                                ],
                                              ),

                                              //Spacing down
                                              SizedBox(height: 24.h),

                                              //Share Button
                                              Largerbutton(
                                                width: double.infinity,
                                                height: 51.h,
                                                title: 'Share Detials',
                                                isFilled: false,
                                                onPressed: () {},
                                                buttonIcon:
                                                    Icons.ios_share_sharp,
                                              ),

                                              //Spacing down
                                              SizedBox(height: 32.h),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
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
                          SizedBox(height: AppSpacing.md),
                          Row(
                            children: [
                              Icon(
                                Icons.keyboard_double_arrow_up,
                                color: AppColors.primaryColor,
                                size: AppIcons.lg,
                              ),
                              SizedBox(width: 12.w),
                              Text(
                                'Upgrade your account',
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(
                                      color: AppColors.textCardSubTitleLight,
                                    ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: AppColors.textBlue,
                                size: AppIcons.lg,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
