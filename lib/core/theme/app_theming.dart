import 'package:banking_mobile_app/core/theme/app_colors.dart';
import 'package:banking_mobile_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

ThemeData getLightTheme() {
  return ThemeData(
    splashColor: AppColors.whiteColor,
    scaffoldBackgroundColor: AppColors.whiteColor,

    //app Bar
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.whiteColor,
      centerTitle: true,
      titleTextStyle: AppTextStyle.mediumPrimary18,
    ),

    //elevated Button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        
       
        foregroundColor: AppColors.whiteColor,
        backgroundColor: AppColors.primaryColor,
        textStyle: AppTextStyle.semiboldWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(18),
        ),
      ),
    ),

    //text Field
    inputDecorationTheme: InputDecorationThemeData(
      fillColor: AppColors.inputField,
      
      prefixIconColor: AppColors.smallTextColor,
      suffixIconColor: AppColors.smallTextColor,
      labelStyle: AppTextStyle.regularSecondry14.copyWith(
        color: AppColors.smallTextColor,
      ),
      hintStyle: AppTextStyle.regularSecondry14.copyWith(
        color: AppColors.smallTextColor,
      ),
      //enabled Border
      // enabledBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(12),
      // ),

      //focus Border
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.inputField)
      )
    ),
  );
}
