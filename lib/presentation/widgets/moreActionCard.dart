import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pidoapp/core/constants/appColors.dart';
import 'package:pidoapp/core/constants/appSizes.dart';

class Moreactioncard extends StatelessWidget {
  final String title;
  final IconData cardIcon;
  final double? width;
  final double? height;
  final VoidCallback? onPressed;

  const Moreactioncard({
    super.key,
    required this.title,
    required this.cardIcon,
    this.width,
    this.height,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.mainCardLight,
          border: Border.all(
            color: AppColors.borderTextFormLight,
            width: 0.5.w,
          ),
          borderRadius: BorderRadius.circular(AppRadius.xsmall),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(cardIcon, color: AppColors.primaryColor, size: 16.5.sp),
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Text(
                title,
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
