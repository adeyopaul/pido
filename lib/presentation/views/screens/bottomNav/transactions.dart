import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/appColors.dart';
import '../../../../core/constants/appSizes.dart';
import '../../../widgets/moreActionCard.dart';
import '../../../widgets/notificationTile.dart';
import '../../../widgets/smallerButton.dart';
import '../../../widgets/transactionsListTile.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  final bool containTransactions = true;
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
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSpacing.lg,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: AppSpacing.xxl),
                            child: Text(
                              'Transactions',
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
                      SizedBox(height: 25.h),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 40.h,
                              child: TextFormField(
                                maxLines: 1,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                  color:
                                  AppColors.iconNotActiveNavLight,
                                ),
                                cursorHeight: 20,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.search,
                                    size: 24,
                                  ),
                                  prefixIconColor:
                                  AppColors.iconNotActiveNavLight,
                                  hintText: 'Search',
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                    color: AppColors
                                        .iconNotActiveNavLight,
                                  ),
                                  filled: true,
                                  fillColor: Color(0x1AB2B3B5),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(
                                      AppRadius.small,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(
                                      AppRadius.small,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.calendar_month_outlined,
                              color: AppColors.iconNotActiveNavLight,
                              size: 28,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
                      // child: Container(
                      //   height: 230,
                      //   child: Center(
                      //     child: Column(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //
                      //       ],
                      //     ),
                      //   ),
                      // ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: height * 0.17,
            left: AppSpacing.lg,
            right: AppSpacing.lg,
            bottom: 0,
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.h),
                      child: Text(
                        '03 Oct, 2023',
                        style: Theme.of(context).textTheme.bodyMedium
                            ?.copyWith(
                          color: AppColors.borderTextFormLight2,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Transactionslisttile(
                      title: 'Deposit',
                      subTile: '4:42PM',
                      amount: 'NGN 52,340.00',
                    ),
                    SizedBox(height: 10.h),Transactionslisttile(
                      title: 'Deposit',
                      subTile: '4:42PM',
                      amount: 'NGN 52,340.00',
                    ),
                    SizedBox(height: 10.h),Transactionslisttile(
                      title: 'Deposit',
                      subTile: '4:42PM',
                      amount: 'NGN 52,340.00',
                    ),
                    SizedBox(height: 10.h),Transactionslisttile(
                      title: 'Deposit',
                      subTile: '4:42PM',
                      amount: 'NGN 52,340.00',
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.h),
                      child: Text(
                        '03 Oct, 2023',
                        style: Theme.of(context).textTheme.bodyMedium
                            ?.copyWith(
                          color: AppColors.borderTextFormLight2,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Transactionslisttile(
                      title: 'Deposit',
                      subTile: '4:42PM',
                      amount: 'NGN 52,340.00',
                    ),
                    SizedBox(height: 10.h),Transactionslisttile(
                      title: 'Deposit',
                      subTile: '4:42PM',
                      amount: 'NGN 52,340.00',
                    ),
                    SizedBox(height: 10.h),Transactionslisttile(
                      title: 'Deposit',
                      subTile: '4:42PM',
                      amount: 'NGN 52,340.00',
                    ),
                    SizedBox(height: 10.h),Transactionslisttile(
                      title: 'Deposit',
                      subTile: '4:42PM',
                      amount: 'NGN 52,340.00',
                    ),
                    SizedBox(height: 10.h),
                    Transactionslisttile(
                      title: 'Deposit',
                      subTile: '4:42PM',
                      amount: 'NGN 52,340.00',
                    ),
                    SizedBox(height: 10.h),Transactionslisttile(
                      title: 'Deposit',
                      subTile: '4:42PM',
                      amount: 'NGN 52,340.00',
                    ),
                    SizedBox(height: 10.h),Transactionslisttile(
                      title: 'Deposit',
                      subTile: '4:42PM',
                      amount: 'NGN 52,340.00',
                    ),
                    SizedBox(height: 10.h),Transactionslisttile(
                      title: 'Deposit',
                      subTile: '4:42PM',
                      amount: 'NGN 52,340.00',
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
            ),
            // In lib/presentation/views/screens/bottomNav/payments.dart
            // GridView.builder(
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2,
            //     mainAxisSpacing: 16.h,
            //     crossAxisSpacing: 16.w,
            //     childAspectRatio: (148.w / 104.h),
            //   ),
            //   itemCount: paymentActions.length,
            //   itemBuilder: (context, index) {
            //     final action = paymentActions[index];
            //     return Moreactioncard(
            //       title: action['title'],
            //       cardIcon: action['icon'],
            //       // --- THIS IS THE CHANGE ---
            //       // Add the onTap property and define what each card should do
            //       onPressed: () {
            //         // You can use a switch statement to handle different actions
            //         switch (action['title']) {
            //           case 'Send Money':
            //             Navigator.push(
            //               context,
            //               MaterialPageRoute(builder: (_) => Sendmoney()),
            //             );
            //             break;
            //           case 'Receive Money':
            //             showModalBottomSheet(
            //               context: context,
            //               isScrollControlled: true,
            //               backgroundColor: Colors.transparent,
            //               shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.vertical(
            //                   top: Radius.circular(AppRadius.medium),
            //                 ),
            //               ),
            //               builder: (context) {
            //                 return Container(
            //                   width: double.infinity,
            //                   decoration: BoxDecoration(
            //                     color: AppColors.mainCardLight,
            //                     borderRadius: BorderRadius.vertical(
            //                       top: Radius.circular(AppRadius.medium),
            //                     ),
            //                   ),
            //                   child: Padding(
            //                     padding: EdgeInsets.all(AppSpacing.lg),
            //                     child: Column(
            //                       mainAxisSize: MainAxisSize.min,
            //                       children: [
            //                         //Fund account Text
            //                         Row(
            //                           mainAxisAlignment:
            //                           MainAxisAlignment.spaceBetween,
            //                           children: [
            //                             Text(
            //                               'Fund your Pido account below via \nbank transfer',
            //                               textAlign: TextAlign.start,
            //                               style: Theme.of(context)
            //                                   .textTheme
            //                                   .labelLarge
            //                                   ?.copyWith(height: 1.2),
            //                             ),
            //                             IconButton(
            //                               onPressed: () {
            //                                 Navigator.pop(context);
            //                               },
            //                               icon: Icon(
            //                                 Icons
            //                                     .keyboard_arrow_down_outlined,
            //                                 size: AppIcons.xl,
            //                               ),
            //                             ),
            //                           ],
            //                         ),
            //
            //                         //Spacing
            //                         SizedBox(height: 24.h),
            //
            //                         //Bank Name Row
            //                         Row(
            //                           children: [
            //                             Icon(
            //                               Icons.food_bank_outlined,
            //                               size: AppIcons.md,
            //                             ),
            //                             SizedBox(width: 16.w),
            //                             Container(
            //                               width: 102.w,
            //                               child: Text(
            //                                 'Bank Name',
            //                                 style: Theme.of(context)
            //                                     .textTheme
            //                                     .displaySmall
            //                                     ?.copyWith(
            //                                   color: AppColors
            //                                       .primaryColor,
            //                                 ),
            //                               ),
            //                             ),
            //                             Padding(
            //                               padding: EdgeInsets.only(
            //                                 left: 2.w,
            //                               ),
            //                               child: Text(
            //                                 'Pido',
            //                                 style: Theme.of(context)
            //                                     .textTheme
            //                                     .bodyMedium
            //                                     ?.copyWith(
            //                                   color: AppColors
            //                                       .primaryColor,
            //                                   fontWeight:
            //                                   FontWeight.w700,
            //                                 ),
            //                               ),
            //                             ),
            //                             SizedBox(height: 16.h),
            //                           ],
            //                         ),
            //
            //                         //Account Number
            //                         Row(
            //                           children: [
            //                             Icon(
            //                               Icons.numbers,
            //                               size: AppIcons.md,
            //                             ),
            //                             SizedBox(width: 16.w),
            //                             Container(
            //                               width: 102.w,
            //                               child: Text(
            //                                 'Account Number',
            //                                 style: Theme.of(context)
            //                                     .textTheme
            //                                     .displaySmall
            //                                     ?.copyWith(
            //                                   color: AppColors
            //                                       .primaryColor,
            //                                 ),
            //                               ),
            //                             ),
            //                             Padding(
            //                               padding: EdgeInsets.only(
            //                                 left: 2.w,
            //                               ),
            //                               child: Text(
            //                                 '1234567890',
            //                                 style: Theme.of(context)
            //                                     .textTheme
            //                                     .bodyMedium
            //                                     ?.copyWith(
            //                                   color: AppColors
            //                                       .primaryColor,
            //                                   fontWeight:
            //                                   FontWeight.w700,
            //                                 ),
            //                               ),
            //                             ),
            //                             IconButton(
            //                               onPressed: () {},
            //                               icon: Icon(
            //                                 Icons.copy,
            //                                 size: AppIcons.md,
            //                               ),
            //                             ),
            //                             SizedBox(height: 16.h),
            //                           ],
            //                         ),
            //
            //                         //Account Name
            //                         Row(
            //                           children: [
            //                             Icon(
            //                               Icons.person_outline,
            //                               size: AppIcons.md,
            //                             ),
            //                             SizedBox(width: 16.w),
            //                             Container(
            //                               width: 102.w,
            //                               child: Text(
            //                                 'Account Name',
            //                                 style: Theme.of(context)
            //                                     .textTheme
            //                                     .displaySmall
            //                                     ?.copyWith(
            //                                   color: AppColors
            //                                       .primaryColor,
            //                                 ),
            //                               ),
            //                             ),
            //                             Padding(
            //                               padding: EdgeInsets.only(
            //                                 left: 2.w,
            //                               ),
            //                               child: Text(
            //                                 'Adeyo Paul',
            //                                 style: Theme.of(context)
            //                                     .textTheme
            //                                     .bodyMedium
            //                                     ?.copyWith(
            //                                   color: AppColors
            //                                       .primaryColor,
            //                                   fontWeight:
            //                                   FontWeight.w700,
            //                                 ),
            //                               ),
            //                             ),
            //                             SizedBox(height: 16.h),
            //                           ],
            //                         ),
            //
            //                         //Spacing down
            //                         SizedBox(height: 24.h),
            //
            //                         //Share Button
            //                         Largerbutton(
            //                           width: double.infinity,
            //                           height: 51.h,
            //                           title: 'Share Detials',
            //                           isFilled: false,
            //                           onPressed: () {},
            //                           buttonIcon: Icons.ios_share_sharp,
            //                         ),
            //
            //                         //Spacing down
            //                         SizedBox(height: 32.h),
            //                       ],
            //                     ),
            //                   ),
            //                 );
            //               },
            //             );
            //             break;
            //           case 'Buy Airtime':
            //             Navigator.push(context, MaterialPageRoute(builder: (context)=> Airtime()));
            //             break;
            //           case 'Buy Data':
            //             Navigator.push(context, MaterialPageRoute(builder: (context)=> Buydata()));
            //             break;
            //           case 'Pay Bills':
            //             Navigator.push(context, MaterialPageRoute(builder: (context)=> Paybills()));
            //             break;
            //           default:
            //             print('Action for ${action['title']} not defined.');
            //         }
            //       },
            //     );
            //   },
            // ),
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
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSpacing.lg,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: AppSpacing.xxl),
                                  child: Text(
                                    'Transactions',
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
                            SizedBox(height: 25.h),
                            Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 40.h,
                                    child: TextFormField(
                                      maxLines: 1,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            color:
                                                AppColors.iconNotActiveNavLight,
                                          ),
                                      cursorHeight: 20,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.search,
                                          size: 24,
                                        ),
                                        prefixIconColor:
                                            AppColors.iconNotActiveNavLight,
                                        hintText: 'Search',
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                              color: AppColors
                                                  .iconNotActiveNavLight,
                                            ),
                                        filled: true,
                                        fillColor: Color(0x1AB2B3B5),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 16,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.circular(
                                            AppRadius.small,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.circular(
                                            AppRadius.small,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.calendar_month_outlined,
                                    color: AppColors.iconNotActiveNavLight,
                                    size: 28,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
                            child: Container(
                              height: 230,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.no_backpack_outlined,
                                      size: 50,
                                      color: AppColors.primaryColor,
                                    ),
                                    Text(
                                      'No transactions yet.',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                        color: AppColors.textCardTitleLight,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
