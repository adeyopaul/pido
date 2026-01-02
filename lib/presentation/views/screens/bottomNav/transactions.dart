import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/appColors.dart';
import '../../../../core/constants/appSizes.dart';
import '../../../widgets/moreActionCard.dart';
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
