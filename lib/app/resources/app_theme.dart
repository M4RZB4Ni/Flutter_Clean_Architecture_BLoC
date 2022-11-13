import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_bloc/app/resources/app_color_extension.dart';


import 'app_size.dart';
import 'app_text_style.dart';

class AppThemes {
  ThemeData get lightTheme => ThemeData(
        primaryColor: AppColors.p01,
        //primaryColorDark: AppColors.primary03,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: AppColors.sec01,
        ),
        disabledColor: AppColors.disabledButton,

        // splashColor: 500.primary.withOpacity(0.3),
        // highlightColor: 500.primary.withOpacity(0.3),
        scaffoldBackgroundColor: AppColors.background,
        textTheme: TextTheme(
          headline1: AppTextStyles.header1,
          headline2: AppTextStyles.header2,
          headline3: AppTextStyles.header3,
          headline4: AppTextStyles.header4,
          bodyText1: AppTextStyles.body1,
          bodyText2: AppTextStyles.body2,
          button: AppTextStyles.b01,
        ),
        inputDecorationTheme: CustomInputDecorationTheme.inputDecoration,
        // hintColor: 500.text,
        elevatedButtonTheme: CustomInputDecorationTheme.elevatedButtonTheme,
        textButtonTheme: CustomInputDecorationTheme.textButtonThemeData,
        appBarTheme: const AppBarTheme(backgroundColor: AppColors.background),
      );

  static ThemeData darkTheme = ThemeData.dark();
}

class CustomInputDecorationTheme {
  CustomInputDecorationTheme._();
  static CustomInputDecorationTheme? _instance;
  // ignore: prefer_constructors_over_static_methods
  static CustomInputDecorationTheme get instance =>
      _instance ??= CustomInputDecorationTheme._();

  static InputDecorationTheme get inputDecoration => InputDecorationTheme(
        prefixIconColor: AppColors.grey900,
        errorStyle: AppTextStyles.body1.copyWith(color: AppColors.error),
        hintStyle: AppTextStyles.body2.copyWith(color: AppColors.grey700),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey700),
          borderRadius: BorderRadius.circular(AppSize.s08),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey700),
          borderRadius: BorderRadius.circular(AppSize.s08),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.error),
          borderRadius: BorderRadius.circular(AppSize.s08),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.p01),
          borderRadius: BorderRadius.circular(AppSize.s08),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.error),
          borderRadius: BorderRadius.circular(AppSize.s08),
        ),
      );

  static ElevatedButtonThemeData get elevatedButtonTheme =>
      ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s08),
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
            (final states) {
              if (states.contains(MaterialState.disabled)) {
                return AppColors.disabledButton;
              } else if (states.contains(MaterialState.pressed)) {
                return AppColors.p02;
              }
              return AppColors.p01;
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith(
            (final states) => states.contains(MaterialState.disabled)
                ? Colors.white
                : Colors.white,
          ),
          // textStyle: MaterialStateProperty.resolveWith(
          //   (final states) {
          //     return const TextStyle(color: Color(0xFF661F1F));
          //   },
          // ),
        ),
      );

  static TextButtonThemeData get textButtonThemeData => TextButtonThemeData(
        style: ButtonStyle(
          splashFactory: NoSplash.splashFactory,
          foregroundColor: MaterialStateProperty.resolveWith(
            (final states) {
              if (states.contains(MaterialState.disabled)) {
                return AppColors.disabledButton;
              } else if (states.contains(MaterialState.pressed)) {
                return AppColors.p02;
              }
              return AppColors.p01;
            },
          ),
        ),
      );
}
