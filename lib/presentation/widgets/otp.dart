import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/appColors.dart';
import '../../core/constants/appSizes.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48.w,
      height: 56.h,
      child: TextFormField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: '',
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: AppColors.borderTextFormLight,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(AppRadius.small),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: AppColors.borderActiveLight,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(AppRadius.small),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: AppColors.borderTextFormLight,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(AppRadius.small),
            ),
          ),
        ),
      ),
    );
  }
}
