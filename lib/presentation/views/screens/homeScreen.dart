import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/core/constants/appColors.dart';
import 'package:pidoapp/core/constants/appSizes.dart';
import 'package:pidoapp/presentation/widgets/moreActionCard.dart';
import 'package:pidoapp/presentation/widgets/smallerButton.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedBottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {

    void bottomBarChange(int index){
      setState(() {
        selectedBottomNavIndex = index;
      });
    }
    final Size screenSize = MediaQuery.of(context).size;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedBottomNavIndex,
        onTap: bottomBarChange,
        backgroundColor: AppColors.mainCardLight,
        elevation: 0,
        selectedItemColor: AppColors.textBlue,
        unselectedItemColor: AppColors.iconNotActiveNavLight,
        selectedLabelStyle: TextStyle(
          color: AppColors.buttonPrimaryLight,
          fontWeight: FontWeight.w700,
          fontSize: 12.sp,
          height: 1.33.h,
        ),
        unselectedLabelStyle: TextStyle(
          color: AppColors.iconNotActiveNavLight,
          fontWeight: FontWeight.w700,
          fontSize: 12.sp,
          height: 1.33.h,
        ),
        unselectedIconTheme: IconThemeData(
          color: AppColors.iconNotActiveNavLight,
          size: 24.sp,
        ),
        selectedIconTheme: IconThemeData(
          color: AppColors.textBlue,
          size: 24.sp,
        ),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz_outlined),
            label: 'Payments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height * 0.25,
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
                              style: Theme.of(context).textTheme.labelLarge
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
                    // height: height * 0.75,
                    color: AppColors.backgroundLight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: height * 0.205),
                            child: Text(
                              'More Actions',
                              style: Theme.of(context).textTheme.bodyMedium
                                  ?.copyWith(
                                    color: AppColors.textCardTitleLight,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Moreactioncard(
                                title: 'Buy Airtime',
                                cardIcon: Icons.phone_android_outlined,
                              ),
                              Moreactioncard(
                                title: 'Buy Data',
                                cardIcon: Icons.wifi,
                              ),
                              Moreactioncard(
                                title: 'Pay Bills',
                                cardIcon: Icons.event_note_outlined,
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Recent Transactions',
                                  style: Theme.of(context).textTheme.bodyMedium
                                      ?.copyWith(
                                        color: AppColors.textCardTitleLight,
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
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: height * 0.16,
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
                            style: Theme.of(context).textTheme.headlineLarge
                                ?.copyWith(color: AppColors.textPrimaryLight),
                          ),
                          TextSpan(
                            text: '0.00',
                            style: Theme.of(context).textTheme.headlineLarge
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
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Text(
                            '  2145809712',
                            style: Theme.of(context).textTheme.headlineSmall
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
