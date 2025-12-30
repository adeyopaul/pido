import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/appColors.dart';
import '../../core/constants/appSizes.dart';

class Elevatedbutton extends StatelessWidget {
  final String buttonTitle;
  final double? buttonWidth;
  final double? buttonHeight;
  final Color? color;
  final bool isFilled;
  final bool isEmpty;
  final String? imageIcon;
  final VoidCallback? buttonFunction;
  final bool isEnabled;

  const Elevatedbutton({
    super.key,
    required this.buttonTitle,
    this.buttonFunction,
    this.buttonWidth,
    this.buttonHeight,
    this.isFilled = true,
    this.color,
    this.isEmpty = false,
    this.imageIcon,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = isEnabled
        ? (color ?? AppColors.buttonPrimaryLight)
        : AppColors.buttonPrimaryLight.withOpacity(0.4);

    final Color titleColor = isEnabled
        ? AppColors.textPrimaryDark
        : AppColors.textPrimaryDark.withOpacity(0.5);

    final Color borderColor = isFilled
        ? Colors.transparent
        : (color ?? AppColors.textSecondaryLight);

    return SizedBox(
      width: buttonWidth,
      height: buttonHeight ?? 51.h,
      child: ElevatedButton(
        onPressed: isEnabled ? buttonFunction : null,
        style: ElevatedButton.styleFrom(
          elevation: isEnabled ? 0 : 0,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.small),
            side: BorderSide(color: borderColor, width: 1),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.md),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (imageIcon != null) ...[
                Image.asset(imageIcon!, height: 20.h, width: 20.w),
                SizedBox(width: 8.w),
              ],
              Text(
                buttonTitle,
                style: TextStyle(
                  color: titleColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
