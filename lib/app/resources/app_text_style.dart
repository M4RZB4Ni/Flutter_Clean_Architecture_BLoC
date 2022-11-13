import 'dart:ui' as ui;
import 'package:flutter/material.dart';

import 'app_color_extension.dart';

class AppTextStyles {
  static const String mierA = 'MierA';
  static const String sharpGrotesk = 'SharpGrotesk';

  // B styles

  static final b01 = TextStyle(
    fontSize: 18 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.white,
  );

  static final b02 = TextStyle(
    fontSize: 20 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.white,
  );

  static final b04 = TextStyle(
    fontSize: 23 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    fontWeight: FontWeight.w400,
  );

  static final b05 = TextStyle(
    fontSize: 32 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    fontWeight: FontWeight.w400,
    color: AppColors.p16,
  );

  static final b06 = TextStyle(
    fontSize: 35 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  // end B styles

  // Mier styles

  static final mier = TextStyle(
    fontSize: 16 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.sec02,
  );

  // end Mier styles

  // Dis styles

  static final dis01 = TextStyle(
    fontSize: 18 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static final dis02 = TextStyle(
    fontSize: 25 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );

  static final dis03 = TextStyle(
    fontSize: 26 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.p06,
    fontWeight: FontWeight.bold,
  );

  static final dis04 = TextStyle(
    fontSize: 40 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
  );

  static final dis05 = TextStyle(
    fontSize: 42 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.black,
  );

  // end Dis styles

  // Label styles

  static final label01 = TextStyle(
    fontSize: 28 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.white,
    fontWeight: FontWeight.bold,
  );

  static final label02 = TextStyle(
    fontSize: 31 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.sec02,
    fontWeight: FontWeight.w400,

  );

  static final label03 = TextStyle(
    fontSize: 56 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.black,
  );

  static final label04 = TextStyle(
    fontSize: 67 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.black,
  );

  static final label05 = TextStyle(
    fontSize: 80 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.black,
    height: 1.3,
  );

  static final label06 = TextStyle(
    fontSize: 89 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.black,
  );

  static final label07 = TextStyle(
    fontSize: 108 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.black,
  );

  // end Label styles

  // Header styles

  static final header1 = TextStyle(
    fontSize: 48 / ui.window.textScaleFactor,
    fontFamily: mierA,
    color: AppColors.sec02,
  );

  static final header2 = TextStyle(
    fontSize: 36 / ui.window.textScaleFactor,
    fontFamily: mierA,
    fontWeight: FontWeight.w400,
    color: AppColors.sec02,
  );

  static final header3 = TextStyle(
    fontSize: 36 / ui.window.textScaleFactor,
    fontFamily: mierA,
    fontWeight: FontWeight.w500,
    color: AppColors.sec02,
  );

  static final header4 = TextStyle(
    fontSize: 48 / ui.window.textScaleFactor,
    fontFamily: mierA,
    fontWeight: FontWeight.w500,
    color: AppColors.sec02,
  );

  static final header5 = TextStyle(
    fontSize: 60 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    fontWeight: FontWeight.w400,
    color: AppColors.sec02,
  );

  // end Header styles

  // Body style

  static final body1 = TextStyle(
    fontSize: 28 / ui.window.textScaleFactor,
    fontFamily: mierA,
    fontWeight: FontWeight.w400,
  );

  static final body2 = TextStyle(
    fontSize: 24 / ui.window.textScaleFactor,
    fontFamily: mierA,
    fontWeight: FontWeight.w400,
  );

  static final body3 = TextStyle(
    fontSize: 28 / ui.window.textScaleFactor,
    fontFamily: mierA,
    fontWeight: FontWeight.w400,
  );

  static final body4 = TextStyle(
    fontSize: 14 / ui.window.textScaleFactor,
    fontFamily: mierA,
    fontWeight: FontWeight.w700,
  );

  static final body5 = TextStyle(
    fontSize: 18 / ui.window.textScaleFactor,
    fontFamily: mierA,
    fontWeight: FontWeight.w400,
  );

  // end Body style

  static final snackBarTitle = TextStyle(
    fontSize: 32 / ui.window.textScaleFactor,
    color: AppColors.black,
    fontFamily: sharpGrotesk,
    fontWeight: FontWeight.bold,
    height: 1.6,
  );

  static final snackBarMessage = TextStyle(
    fontSize: 30 / ui.window.textScaleFactor,
    color: AppColors.c_37Color,
    fontFamily: sharpGrotesk,
    height: 1.5,
  );

  static const nullStyle = TextStyle();

  static final qrWidget = TextStyle(
    fontSize: 16 / ui.window.textScaleFactor,
    fontWeight: FontWeight.bold,
    height: 1.6,
    color: AppColors.black,
  );
}
