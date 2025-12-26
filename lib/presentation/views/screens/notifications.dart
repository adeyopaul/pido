import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/presentation/widgets/notificationTile.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import '../../../core/constants/appColors.dart';
import '../../../core/constants/appSizes.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  final bool containNotifications = true;
  @override
  Widget build(BuildContext context) {
    // final Size screenSize = MediaQuery.of(context).size;
    // final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          'Notifications',
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
      body: containNotifications
      //ContainsNotification
          ? Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: height * 0.109,
                      color: AppColors.primaryColor,
                    ),
                    Expanded(
                      child: Container(color: AppColors.backgroundLight),
                    ),
                  ],
                ),

                SizedBox(height: 12.h),
                Positioned(
                  top: height * 0.0005,
                  left: AppSpacing.lg,
                  right: AppSpacing.lg,
                  bottom: 0,
                  child: SingleChildScrollView(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(AppRadius.small),
                        ),
                      ),
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
                          Notificationtile(
                            title: 'Transaction Alert',
                            subTile: lorem(paragraphs: 1, words: 30),
                            time: '4:42PM',
                          ),
                          SizedBox(height: 10.h),
                          Notificationtile(
                            title: 'Transaction Alert',
                            subTile: lorem(paragraphs: 1, words: 30),
                            time: '4:42PM',
                          ),
                          // SizedBox(height: 10.h),
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
                          Notificationtile(
                            title: 'Transaction Alert',
                            subTile: lorem(paragraphs: 1, words: 30),
                            time: '4:42PM',
                          ),
                          SizedBox(height: 10.h),
                          Notificationtile(
                            title: 'Transaction Alert',
                            subTile: lorem(paragraphs: 1, words: 30),
                            time: '4:42PM',
                          ),SizedBox(height: 10.h),
                          Notificationtile(
                            title: 'Transaction Alert',
                            subTile: lorem(paragraphs: 1, words: 30),
                            time: '4:42PM',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          //Does not Contain any Notification
          : Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: height * 0.109,
                      color: AppColors.primaryColor,
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
                                      'Nothing here!',
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
