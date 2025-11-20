import 'package:flutter/material.dart';
import 'package:pidoapp/core/constants/theme/textTheme.dart';

import '../appColors.dart';
import '../appSizes.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primaryColor,
      onPrimary: Colors.white,
      secondary: AppColors.backgroundLight,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: AppColors.backgroundLight,
      onSurface: AppColors.textPrimaryLight,
      tertiary: AppColors.mainCardLight,
      surfaceContainer: AppColors.iconSecondaryLight,
      inversePrimary: AppColors.avatarIcon,
    ),
    scaffoldBackgroundColor: AppColors.backgroundLight,
    cardColor: AppColors.mainCardLight,
    dividerColor: AppColors.divider,
    fontFamily: AppTextStyles.fontFamily,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.backgroundLight,
      foregroundColor: AppColors.textPrimaryLight,
      titleTextStyle: AppTextStyles.headline2,
    ),
    textTheme: TextTheme(
      labelSmall: AppTextStyles.hint1.copyWith(color: AppColors.textHintLight),
      displayLarge: AppTextStyles.headline1.copyWith(
        color: AppColors.textPrimaryLight,
      ),
      displayMedium: AppTextStyles.headline2.copyWith(
        color: AppColors.textPrimaryLight2,
      ),
      bodyLarge: AppTextStyles.body1.copyWith(
        color: AppColors.textPrimaryLight,
      ),
      bodyMedium: AppTextStyles.body2.copyWith(
        color: AppColors.textSecondaryLight,
      ),
      labelLarge: AppTextStyles.button.copyWith(
        color: AppColors.textPrimaryLight,
      ),
    ),
    // inputDecorationTheme: InputDecorationTheme(
    //   filled: true,
    //   fillColor: AppColors.mainCardLight,
    //   contentPadding: EdgeInsets.all(AppSpacing.md),
    //   border: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(AppRadius.medium),
    //     borderSide: BorderSide(color: AppColors.borderTextFormLight),
    //   ),
    //   focusedBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(AppRadius.medium),
    //     borderSide: BorderSide(color: AppColors.primaryColor),
    //   ),
    // ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonPrimaryLight,
        textStyle: AppTextStyles.button,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.medium),
        ),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    cardColor: AppColors.mainCardDark,
    dividerColor: AppColors.divider,
    fontFamily: AppTextStyles.fontFamily,
    colorScheme: ColorScheme(
      primary: AppColors.primaryColor,
      onPrimary: Colors.white,
      brightness: Brightness.dark,
      secondary: AppColors.backgroundDark, // #48A0FF
      onSecondary: Colors.white,
      tertiary: Color(0xFF2D936C), // transferCard
      onTertiary: Colors.white,
      tertiaryContainer: Color(0xFF1F5D46),
      onTertiaryContainer: Color(0xFFCFFDE1),
      error: AppColors.textError, // #FF4848
      onError: Colors.black,
      surface: AppColors.mainCardDark, // #2A2C31
      onSurface: AppColors.textPrimaryDark,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.backgroundDark,
      foregroundColor: AppColors.textPrimaryDark,
      titleTextStyle: AppTextStyles.headline2.copyWith(
        color: AppColors.textPrimaryDark,
      ),
    ),
    textTheme: TextTheme(
      displayLarge: AppTextStyles.headline1.copyWith(
        color: AppColors.textPrimaryDark,
      ),
      displayMedium: AppTextStyles.headline2.copyWith(
        color: AppColors.textPrimaryDark,
      ),
      bodyLarge: AppTextStyles.body1.copyWith(color: AppColors.textPrimaryDark),
      bodyMedium: AppTextStyles.body2.copyWith(
        color: AppColors.textSecondaryDark,
      ),
      labelLarge: AppTextStyles.button,
    ),
    // inputDecorationTheme: InputDecorationTheme(
    //   filled: true,
    //   fillColor: AppColors.mainCardDark,
    //   contentPadding: EdgeInsets.all(AppSpacing.md),
    //   border: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(AppRadius.medium),
    //     borderSide: BorderSide(color: AppColors.borderTextFormDark),
    //   ),
    //   focusedBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(AppRadius.medium),
    //     borderSide: BorderSide(color: AppColors.primaryColor),
    //   ),
    // ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonPrimaryDark,
        textStyle: AppTextStyles.button,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.medium),
        ),
      ),
    ),
  );
}
