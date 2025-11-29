import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pidoapp/core/constants/appColors.dart';
import 'package:pidoapp/core/constants/appSizes.dart';

class Smallerbutton extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  final bool isFilled;
  final VoidCallback onPressed;
  final IconData buttonIcon;

  const Smallerbutton({
    super.key,
    required this.width,
    required this.height,
    required this.title,
    required this.isFilled,
    required this.onPressed,
    required this.buttonIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: FilledButton(
        style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: isFilled
                ? BorderSide.none
                : BorderSide(color: AppColors.borderTextFormLight),
            borderRadius: BorderRadius.circular(AppRadius.xsmall),
          ),
          backgroundColor: isFilled
              ? AppColors.buttonPrimaryLight
              : AppColors.backgroundLight,
        ),
        onPressed: () {},
        child: Row(
          children: [
            FaIcon(
              buttonIcon,
              size: AppIcons.md,
              color: isFilled
                  ? AppColors.backgroundLight
                  : AppColors.primaryColor,
            ),
            SizedBox(width: 12.w),
            Text(
              title,
              style: isFilled
                  ? Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: AppColors.backgroundLight,
                      fontWeight: FontWeight.w600,
                    )
                  : Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
