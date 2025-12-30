import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/presentation/views/screens/sendMoney.dart';
import 'package:pidoapp/presentation/widgets/moreActionCard.dart';

import '../../../../core/constants/appColors.dart';
import '../../../../core/constants/appSizes.dart';
import '../../../widgets/largerButton.dart';
import '../../../widgets/notificationTile.dart';

class Payments extends StatelessWidget {
  const Payments({super.key});

  @override
  Widget build(BuildContext context) {
    // Place this inside your build method, before the `return Scaffold(...)`
    final List<Map<String, dynamic>> paymentActions = [
      {'title': 'Send Money', 'icon': Icons.swap_horiz},
      {'title': 'Receive Money', 'icon': Icons.call_received},
      {'title': 'Buy Airtime', 'icon': Icons.phone_android_outlined},
      {'title': 'Buy Data', 'icon': Icons.wifi},
      {'title': 'Pay Bills', 'icon': Icons.receipt_long_outlined},
    ];

    // final Size screenSize = MediaQuery.of(context).size;
    // final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          'Payments',
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(height: height * 0.109, color: AppColors.primaryColor),
              Expanded(child: Container(color: AppColors.backgroundLight)),
            ],
          ),

          SizedBox(height: 12.h),
          Positioned(
            top: height * 0.03,
            left: AppSpacing.lg,
            right: AppSpacing.lg,
            bottom: 0,
            child:
                // In lib/presentation/views/screens/bottomNav/payments.dart
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16.h,
                    crossAxisSpacing: 16.w,
                    childAspectRatio: (148.w / 104.h),
                  ),
                  itemCount: paymentActions.length,
                  itemBuilder: (context, index) {
                    final action = paymentActions[index];
                    return Moreactioncard(
                      title: action['title'],
                      cardIcon: action['icon'],
                      // --- THIS IS THE CHANGE ---
                      // Add the onTap property and define what each card should do
                      onPressed: () {
                        // You can use a switch statement to handle different actions
                        switch (action['title']) {
                          case 'Send Money':
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => Sendmoney()),
                            );
                            break;
                          case 'Receive Money':
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
                                      top: Radius.circular(AppRadius.medium),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(AppSpacing.lg),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        //Fund account Text
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                          buttonIcon: Icons.ios_share_sharp,
                                        ),

                                        //Spacing down
                                        SizedBox(height: 32.h),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                            break;
                          case 'Buy Airtime':
                            print('Navigating to Buy Airtime screen...');
                            break;
                          case 'Buy Data':
                            print('Navigating to Buy Data screen...');
                            break;
                          case 'Pay Bills':
                            print('Navigating to Pay Bills screen...');
                            break;
                          default:
                            print('Action for ${action['title']} not defined.');
                        }
                      },
                    );
                  },
                ),
          ),
        ],
      ),
    );
  }
}
