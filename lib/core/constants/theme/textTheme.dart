import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../appColors.dart';

/// =======================================
///              TYPOGRAPHY
/// =======================================
class AppTextStyles {
  static const String fontFamily = 'Nunito Sans';

  static TextStyle headline1 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 28.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle headline2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    height: 1.33,
  );

  static TextStyle body1 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle body2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    height: 2.28,
  );

  static TextStyle hint1 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    // height: 1.5,
  );

static TextStyle hint2 = TextStyle(
    fontFamily: fontFamily,
    // fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    // height: 1.5,
  );

  static TextStyle button = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
}