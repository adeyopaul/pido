import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/constants/appColors.dart';
import '../../core/constants/appSizes.dart';

class Largerbutton extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  final bool isFilled;
  final VoidCallback onPressed;

  /// Accepts either a Material [IconData] or Font Awesome [FaIconData].
  final Object? buttonIcon;

  const Largerbutton({
    super.key,
    required this.width,
    required this.height,
    required this.title,
    required this.isFilled,
    required this.onPressed,
    this.buttonIcon,
  });

  @override
  Widget build(BuildContext context) {
    final iconColor = isFilled
        ? AppColors.backgroundLight
        : AppColors.primaryColor;

    Widget? icon;
    if (buttonIcon is FaIconData) {
      icon = FaIcon(
        buttonIcon as FaIconData,
        size: AppIcons.md,
        color: iconColor,
      );
    } else if (buttonIcon is IconData) {
      icon = Icon(
        buttonIcon as IconData,
        size: AppIcons.md,
        color: iconColor,
      );
    }

    return SizedBox(
      width: width,
      height: height,
      child: FilledButton(
        style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: isFilled
                ? BorderSide.none
                : BorderSide(color: AppColors.borderLargerButton),
            borderRadius: BorderRadius.circular(AppRadius.small),
          ),
          backgroundColor: isFilled
              ? AppColors.buttonPrimaryLight
              : AppColors.largeButton,
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              icon,
              SizedBox(width: 8.w),
            ],
            Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: isFilled
                        ? AppColors.backgroundLight
                        : AppColors.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
