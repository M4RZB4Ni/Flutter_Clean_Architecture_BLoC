import 'package:flutter/material.dart';

class AppColors {
  static const sec01 = Color(0xff9E73FF);
  static const sec02 = Color(0xffC1A6FF);
  static const p01 = Color(0xff013af9);
  static const p02 = Color(0xff018dff);
  static const p03 = Color(0xffaec1fc);
  static const p04 = Color(0xffe8eaff);
  static const p05 = Color(0xffC7C5D0);
  static const p06 = Color(0xffBDBDBD);
  static const p07 = Color(0xffF0EFFF);
  static const p08 = Color(0xffE3E3E3);
  static const p09 = Color(0xffF4F4F4);
  static const p10 = Color(0xffFDFDFD);
  static const p11 = Color(0xffFBFBFB);
  static const p12 = Color(0xff78767A);
  static const p13 = Color(0xff929094);
  static const p14 = Color(0xff555555);
  static const p15 = Color(0xff303034);
  static const p16 = Color(0xff1B1B1F);
  static const b01 = Color(0xffF87722);
  static const b02 = Color(0xffCDBFE3);
  static const b03 = Color(0xff6300FF);
  static const b04 = Color(0xff2744C7);
  static const b05 = Color(0xff7395DD);
  static const b06 = Color(0xff7E6B43);
  static const b07 = Color(0xffDCCDB0);
  static const b08 = Color(0xff3B2F27);
  static const b09 = Color(0xff765F50);
  static const b10 = Color(0xff825DBC);
  static const b11 = Color(0xff3B265C);
  static const b12 = Color(0xffEA88D3);
  static const b13 = Color(0xffC940A9);
  static const b14 = Color(0xffAA7209);
  static const b15 = Color(0xffF7BC4E);
  static const b16 = Color(0xffB5AB0E);
  static const b17 = Color(0xffFFF329);
  static const b18 = Color(0xffFFF329);
  static const b19 = Color(0xffFFF329);
  static const white = Color(0xffffffff);
  static const black = Color(0xff000000);
  static const s = Color(0xff00FF01);
  static const e = Color(0xffFF1616);
  static const eLight = Color(0xffFFE5E5);
  static const win = Color(0xffffffff);
  static const bin = Color(0x26000000);
  static const colourSh = Color(0x4affffff);

  // Gradient colors

  static const LinearGradient butGrd = LinearGradient(
    colors: [Color(0xffF31E4E), Color(0xffA45CD7), Color(0xff67BDF3)],
    stops: [0.0, 0.7, 1],
  );

  static const LinearGradient grd01 =
  LinearGradient(colors: [Color(0xffF7003E), Color(0xffFD00C5)]);

  static const LinearGradient grd02 = LinearGradient(
    colors: [Color(0xff000000), Color(0xffBD006D)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient grd03 = LinearGradient(
    colors: [
      Color(0xff689DD2),
      Color(0xffC633C5),
      Color(0xff679FD4),
      Color(0xffCE1776),
      Color(0xffDD1250),
      Color(0xffEA3518)
    ],
    stops: [0, 0.14, 0.28, 0.6, 0.7, 1],
  );

  static const LinearGradient grd04 = LinearGradient(
    colors: [Color(0xff58019F), Color(0xff8E02FF), Color(0xff8E02FF)],
    stops: [0.0, 0.75, 1],
  );

  // end Gradient colors

  // ProcessLine colors

  static const LinearGradient lineGrd00 =
  LinearGradient(colors: [Color(0xff57cddd)]);

  static const LinearGradient lineGrd01 = LinearGradient(
    colors: [Color(0xff8598d6), Color(0xff57cddd)],
    stops: [0.0, 0.75],
  );

  static const LinearGradient lineGrd02 = LinearGradient(
    colors: [Color(0xff2c53cc), Color(0xff849ad7), Color(0xff57cddd)],
    stops: [0.0, 0.4, 0.75],
  );

  static const LinearGradient lineGrd03 = LinearGradient(
    colors: [
      Color(0xffd121af),
      Color(0xff849ad7),
      Color(0xff64a0d5),
      Color(0xff57cddd)
    ],
    stops: [0.0, 0.6, 0.68, 0.8],
  );

  static const LinearGradient lineGrd04 = LinearGradient(
    colors: [
      Color(0xffe12aa5),
      Color(0xffc745cb),
      Color(0xff849ad7),
      Color(0xff64a0d5),
      Color(0xff57cddd)
    ],
    stops: [0.0, 0.4, 0.6, 0.68, 0.8],
  );

  static const LinearGradient lineGrd05 = LinearGradient(
    colors: [
      Color(0xffe02e88),
      Color(0xffde2fab),
      Color(0xffcb39c1),
      Color(0xff9586d3),
      Color(0xff54d3dd)
    ],
    stops: [0.0, 0.2, 0.45, 0.55, 0.75],
  );

  static const LinearGradient lineGrd06 = LinearGradient(
    colors: [
      Color(0xffde1251),
      Color(0xffdf127b),
      Color(0xffd220ae),
      Color(0xffbc3ac8),
      Color(0xff5da9d6),
      Color(0xff54d3dd)
    ],
    stops: [0, 0.15, 0.45, 0.55, 0.8, 0.95],
  );

  static const LinearGradient lineGrd07 = LinearGradient(
    colors: [
      Color(0xffe64128),
      Color(0xffde124d),
      Color(0xffdf129a),
      Color(0xffcb29ba),
      Color(0xff6a99d4),
      Color(0xff54d3dd)
    ],
    stops: [0, 0.2, 0.45, 0.55, 0.8, 0.95],
  );

  // end ProcessLine colors

  static const Color transparent = Color(0x00000000);

  static const error = Color(0xffBF283A);
  static const errorLight = Color(0xffF27E8C);

  static const success = Color(0xff28BF64);
  static const successLight = Color(0xff8FEDB4);
  static const successDark = Color(0xff19A450);

  static const info = Color(0xff2092E4);
  static const infoLight = Color(0xff9BD5FF);
  static const infoDark = Color(0xff1479C2);

  static const warning = Color(0xffE49620);
  static const warningDark = Color(0xffC47B0D);

  static const background = Color(0xffF3F1F1);
  static const neutral = Color(0xffF4F7FB);
  static const surface = Color(0xffFFFFFF);
  static const inverseSurface = Color(0xffF3F3F3);
  static const paper = Color(0xffFFFFFF);

  static const onPrimary = Color(0xffFFFFFF);
  static const onSecondary = Color(0xffFFFFFF);

  static const grey900 = Color(0xff354752);
  static const grey700 = Color(0xff607079);
  static const grey500 = Color(0xff8798A1);
  static const grey300 = Color(0xffC8D3D9);
  static const onError = Color(0xffffffff);

  static const yellow = Color(0xffFBC020); //for strong pass
  static const green = Color(0xff76BF4C); //for strong pass
  static const green500 = Color.fromARGB(255, 106, 129, 93); //for strong pass
  static const disabledButton = Color(0xffb9e0de); //for strong pass

  static const Color defaultThemeColorWeChat = Color(0xff00bc56);

  //mohammad-khorram
  static const Color darkColor = Color(0xff2a343b);
  static const Color lightColor = Color(0xfff0f0f0);
  static const Color dividerColor = Color(0xffdfdfdf);
  static const Color hintColor = Color(0xff7d7d7d);
  static const Color c_250Color = Color(0xfffafafa);
  static const Color c_245Color = Color(0xfff5f5f5);
  static const Color c_240Color = Color(0xfff0f0f0);
  static const Color c_237Color = Color(0xffededed);
  static const Color c_225Color = Color(0xffe1e1e1);
  static const Color c_213Color = Color(0xffd5d5d5);
  static const Color c_200Color = Color(0xffc8c8c8);
  static const Color c_187Color = Color(0xffbbbbbb);
  static const Color c_175Color = Color(0xffafafaf);
  static const Color c_163Color = Color(0xffa3a3a3);
  static const Color c_150Color = Color(0xff969696);
  static const Color c_137Color = Color(0xff898989);
  static const Color c_125Color = Color(0xff7d7d7d);
  static const Color c_113Color = Color(0xff717171);
  static const Color c_100Color = Color(0xff646464);
  static const Color c_87Color = Color(0xff575757);
  static const Color c_75Color = Color(0xff4b4b4b);
  static const Color c_63Color = Color(0xff3f3f3f);
  static const Color c_50Color = Color(0xff323232);
  static const Color c_43Color = Color(0xff2b2b2b);
  static const Color c_37Color = Color(0xff252525);
  static const Color c_25Color = Color(0xff191919);
  static const Color c_13Color = Color(0xff0d0d0d);
}
