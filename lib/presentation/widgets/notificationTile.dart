import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/appColors.dart';
import '../../core/constants/appSizes.dart';
import '../../core/constants/theme/textTheme.dart';

class Notificationtile extends StatelessWidget {
  final String title;
  final String subTile;
  final String time; // Add a property for your new title
  final String? amount;
  const Notificationtile({
    super.key,
    required this.title,
    required this.subTile,
    required this.time,
    this.amount
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.mainCardLight,
        border: Border.all(color: AppColors.borderTextFormLight, width: 0.5.w),
        borderRadius: BorderRadius.circular(AppRadius.xsmall),
      ),
      child: ListTile(
        leading: Container(
          width: 32.w,
          height: 32.h,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0x0A003399),
          ),
          child: Icon(
            Icons.arrow_downward_outlined,
            color: const Color(0xFF24A876),
            size: 16.sp,
          ),
        ),

        title: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),


        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 4.0),
              child: Text(
                subTile,
                style: AppTextStyles.hint2.copyWith(
                  height: 1.6,
                  fontSize: 10.sp,
                ),
              ),
            ),
            Text(
              time,
              style: AppTextStyles.hint2.copyWith(
                color: AppColors.textPrimaryLight.withOpacity(0.6),
                fontSize: 10.sp,
              ),
            ),
          ],
        ),

        trailing: amount != null && amount!.isNotEmpty
            ? Text(
          amount!,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700),
        )
            : null,

        contentPadding: EdgeInsets.symmetric(
          vertical: 4.h,
          horizontal: AppSpacing.ms,
        ),
        dense: true,
      ),
    );
  }
}
