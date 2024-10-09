import 'package:flutter/material.dart';
import 'package:home_app/src/utils/app_colors.dart';

sealed class Apptheme{
  static ThemeData get light{
    return ThemeData(
        // appBarTheme:const AppBarTheme(
        //     elevation: 0,
        //     color: AppColor.colorDark1F1D2B
        // ),
        scaffoldBackgroundColor: AppColors.clF4B5A4Salmon,
        splashColor: Colors.transparent,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black)
    );
  }

  static ThemeData get dark{
    return ThemeData(
        // appBarTheme:const AppBarTheme(
        //     elevation: 0,
        //     color: AppColor.colorDark1F1D2B
        // ),
        // scaffoldBackgroundColor: AppColor.colorDark1F1D2B,
        splashColor: Colors.transparent,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black)
    );
  }
}