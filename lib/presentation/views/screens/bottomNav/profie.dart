import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/core/constants/appSizes.dart';

import '../../../../core/constants/appColors.dart';
import '../notifications.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: height * 0.82,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppRadius.large),
            ),
            color: AppColors.backgroundLight,
          ),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: AppSpacing.xl),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: AppSpacing.md,
                            left: AppSpacing.lg,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Profile(),
                                ),
                              );
                            },
                            child: Container(
                              width: 45.w,
                              height: 45.h,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.person_outline,
                                size: AppSpacing.xl,
                                color: AppColors.iconSecondaryLight,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Padding(
                          padding: EdgeInsets.only(
                            top: AppSpacing.wl,
                            left: AppSpacing.sm,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Paul, Adeyo',
                                style: Theme.of(context).textTheme.labelLarge
                                    ?.copyWith(
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              SizedBox(height: 6.h),
                              RichText(
                                text: TextSpan(
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium
                                      ?.copyWith(
                                        color: AppColors.primaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                  children: [
                                    TextSpan(
                                      text: 'Terminal ID: ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                            color: AppColors.textPrimaryLight,
                                          ),
                                    ),
                                    TextSpan(
                                      text: 'PD-2345-00',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                            color: AppColors.textPrimaryLight,
                                            fontWeight: FontWeight.w700,
                                          ),
                                    ),
                                  ],
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
                      bottom: 15.h,
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
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.textBlue),
                          borderRadius: BorderRadius.all(
                            Radius.circular(AppRadius.small),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 25,
                          ),
                          child: Text(
                            'KYC Level 1',
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: AppColors.textBlue,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(AppRadius.small),
                            ),
                            color: Color(0xFFFFFAEB),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Text(
                              'Pending',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Color(0xFFB54708),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: AppColors.textPrimaryLight,
                          size: AppIcons.lg,
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h,),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
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
                                  'Merchant ID Number',
                                  style: Theme.of(context).textTheme.bodyMedium
                                      ?.copyWith(
                                    fontWeight: FontWeight.w200,
                                    color: AppColors.textPrimaryLight,
                                  ),
                                ),
                                Text(
                                  '302343245289',
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
                                  'Account Number',
                                  style: Theme.of(context).textTheme.bodyMedium
                                      ?.copyWith(
                                    fontWeight: FontWeight.w200,
                                    color: AppColors.textPrimaryLight,
                                  ),
                                ),
                                Text(
                                  '2138451268',
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
                                  'Account Name',
                                  style: Theme.of(context).textTheme.bodyMedium
                                      ?.copyWith(
                                    fontWeight: FontWeight.w200,
                                    color: AppColors.textPrimaryLight,
                                  ),
                                ),
                                Text(
                                  'Adeyo Paul',
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
                    SizedBox(height: 20.h,),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppRadius.small),
                        color: AppColors.mainCardLight,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(AppSpacing.md),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.person_outline,
                                  color: AppColors.primaryColor,
                                  size: AppIcons.wl,
                                ),
                                SizedBox(width: 12.w),
                                Text(
                                  'Profile',
                                  style: Theme.of(context).textTheme.bodyMedium
                                      ?.copyWith(
                                    color: AppColors.textCardSubTitleLight,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.keyboard_arrow_right_outlined,
                                  color: AppColors.textPrimaryLight,
                                  size: AppIcons.lg,
                                ),
                              ],
                            ),
                            SizedBox(height: 12.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.lock_open_sharp,
                                  color: AppColors.primaryColor,
                                  size: AppIcons.wl,
                                ),
                                SizedBox(width: 12.w),
                                Text(
                                  'Change Transaction PIN',
                                  style: Theme.of(context).textTheme.bodyMedium
                                      ?.copyWith(
                                    color: AppColors.textCardSubTitleLight,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.keyboard_arrow_right_outlined,
                                  color: AppColors.textPrimaryLight,
                                  size: AppIcons.lg,
                                ),
                              ],
                            ),
                            SizedBox(height: 12.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.password,
                                  color: AppColors.primaryColor,
                                  size: AppIcons.lg,
                                ),
                                SizedBox(width: 12.w),
                                Text(
                                  'Manage Password',
                                  style: Theme.of(context).textTheme.bodyMedium
                                      ?.copyWith(
                                    color: AppColors.textCardSubTitleLight,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.keyboard_arrow_right_outlined,
                                  color: AppColors.textPrimaryLight,
                                  size: AppIcons.lg,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
