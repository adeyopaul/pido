import 'package:flutter/material.dart';

import '../../core/constants/appColors.dart';
import '../../core/constants/appSizes.dart';

class Billstile extends StatelessWidget {
  final String title;
  final IconData tileIcon;
  final VoidCallback onPressed;
  const Billstile({
    super.key,
    required this.title,
    required this.tileIcon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppSpacing.sm),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.mainCardLight,
          borderRadius: BorderRadius.circular(AppRadius.xsmall),
          border: Border.all(
            width: 0.5,
            color: AppColors.iconNotActiveNavLight,
          ),
        ),
        child: ListTile(
          onTap: onPressed,
          leading: Icon(tileIcon),
          title: Text(
            title,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(),
          ),
        ),
      ),
    );
  }
}
