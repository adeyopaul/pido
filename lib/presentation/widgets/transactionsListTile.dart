import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/appColors.dart';
import '../../core/constants/appSizes.dart';
import '../../core/constants/theme/textTheme.dart';

class Transactionslisttile extends StatelessWidget {
  final String? title;
  final String? subTile;
  final String? amount;

  const Transactionslisttile({
    super.key,
     this.title,
     this.subTile,
     this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.mainCardLight,
        border: Border.all(color: AppColors.borderTextFormLight, width: 0.5.w),
        borderRadius: BorderRadius.circular(AppRadius.xsmall),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppSpacing.md,
          horizontal: AppSpacing.ms,
        ),
        child: Row(
          children: [
            Container(
              width: 32.w,
              height: 32.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0x0A003399),
              ),
              child: Icon(
                Icons.arrow_downward_outlined,
                color: Color(0xFF24A876),
                size: 16.sp,
              ),
            ),
            SizedBox(width: 12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Deposit',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '4:42 PM',
                  style: AppTextStyles.hint2.copyWith(
                    height: 1.6,
                    fontSize: 10.sp,
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              '+ NGN 51,214.65',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
