import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSpacing {
  static final EdgeInsets sFromWindowPaddingOnlyBottom = EdgeInsets.only(
    bottom: EdgeInsets.fromWindowPadding(
      WidgetsBinding.instance.window.viewInsets,
      WidgetsBinding.instance.window.devicePixelRatio,
    ).bottom,
  );

  static final EdgeInsets s5T9B = EdgeInsets.only(top: 5.r, bottom: 9.r);
  static final EdgeInsets s12T6B = EdgeInsets.only(top: 12.r, bottom: 6.r);
  static final EdgeInsets s11R35L = EdgeInsets.only(left: 35.r, right: 11.r);
  static final EdgeInsets s92Right51Left = EdgeInsets.only(left: 51.r, right: 92.r);
  static final EdgeInsets s43Left18Right =
      EdgeInsets.only(left: 43.r, right: 18.r);

  static final EdgeInsets s23Bottom45Left =
      EdgeInsets.only(bottom: 23.r, left: 45);
  static final EdgeInsets s45Left = EdgeInsets.only(left: 45.r);
  static final EdgeInsets s45Horizontal = EdgeInsets.symmetric(horizontal: 45.r);
  static final EdgeInsets s45Horizontal85T37B = EdgeInsets.only(right: 45.r,left: 45.r,top: 85.r,bottom: 37.r);
  static final EdgeInsets s45Horizontal23T75B = EdgeInsets.only(right: 45.r,left: 45.r,top: 23.r,bottom: 75.r);
  static final EdgeInsets s45Horizontal23T68B = EdgeInsets.only(right: 45.r,left: 45.r,top: 23.r,bottom: 68.r);
  static final EdgeInsets s31Left = EdgeInsets.only(left: 31.r);

  static final EdgeInsets s35Left41Right =
      EdgeInsets.only(left: 35.r, right: 41.r);
  static final EdgeInsets s41Left =
  EdgeInsets.only(left: 41.r);
  static final EdgeInsets s62Left =
  EdgeInsets.only(left: 62.r);
  static final EdgeInsets s63Left30Top =
  EdgeInsets.only(left: 63.r,top: 30);
  static final EdgeInsets s49Bottom = EdgeInsets.only(bottom: 49.r);
  static final EdgeInsets s12Left27Right =
      EdgeInsets.only(left: 12.r, right: 27.r);
  static final EdgeInsets s56T = EdgeInsets.only(top: 56.r);
  static final EdgeInsets s10T68Horizontal =
      EdgeInsets.only(top: 10.r, right: 68.r, left: 68.r);
  static final EdgeInsets s85Horizontal32T =
      EdgeInsets.only(top: 32.r, left: 85.r, right: 85.r);
  static final EdgeInsets s48Left67Right =
      EdgeInsets.only(left: 48.r, right: 67.r);
  static final EdgeInsets s85Left27T = EdgeInsets.only(top: 27.r, left: 85.r);
  static final EdgeInsets s85Left27R = EdgeInsets.only(top: 27.r, right: 85.r);
  static final EdgeInsets s85Horizontal28T42Bottom =
      EdgeInsets.only(top: 28.r, left: 85.r, right: 85.r, bottom: 42.r);

  static final EdgeInsets s6Left6Top0Right6Bottom =
      EdgeInsets.only(top: 6.r, left: 6.r, right: 0.r, bottom: 6.r);

  static final EdgeInsets s29v73h =
      EdgeInsets.symmetric(vertical: 29.r, horizontal: 73.r);

  static final EdgeInsets s24v32h =
  EdgeInsets.symmetric(vertical: 24.r, horizontal: 32.r);

  static final EdgeInsets s24L08T24R16B =
      EdgeInsets.fromLTRB(0.r, 8.r, 24.r, 16.r);

  static const EdgeInsets zeroAll = EdgeInsets.zero;
  static final EdgeInsets s10Bottom = EdgeInsets.only(bottom: 10.r);
  static final EdgeInsets s10All = EdgeInsets.all(10.r);
  static final EdgeInsets s10Bottom10Right =
      EdgeInsets.only(bottom: 10.r, right: 10);
  static final EdgeInsets s20Bottom = EdgeInsets.only(bottom: 20.r);
  static final EdgeInsets s30B = EdgeInsets.only(bottom: 30.r);
  static final EdgeInsets s80L = EdgeInsets.only(left: 80.r);
  static final EdgeInsets s50Left42Right = EdgeInsets.only(left: 50.r,right: 42.r);
  static final EdgeInsets s50Right = EdgeInsets.only(right: 50.r);
  static final EdgeInsets s39Top37Bottom = EdgeInsets.only(top: 39.r,bottom: 37.r);
  static final EdgeInsets s82Horizontal =
      EdgeInsets.symmetric(horizontal: 82.r);

  static final EdgeInsets s30Vertical =
  EdgeInsets.symmetric(vertical: 30.r);


  static final EdgeInsets s15T30BR30L60 =
  EdgeInsets.only(top: 15.r,bottom: 30.r,right: 30.r,left: 60.r);

  static final EdgeInsets s82Horizontal21Bottom =
      EdgeInsets.only(right: 82.r, left: 82.r, bottom: 21.r);
  static final EdgeInsets s82Horizontal21Bottom54Top =
      EdgeInsets.only(right: 82.r, left: 82.r, bottom: 21.r, top: 54.r);
  static final EdgeInsets s82HorizontalTop37 =
      EdgeInsets.only(right: 82.r, left: 82.r, top: 37.r);

  static final EdgeInsets s13Right = EdgeInsets.only(right: 13.r);
  static final EdgeInsets s8Left = EdgeInsets.only(left: 8.r);
  static final EdgeInsets s8RIGHT = EdgeInsets.only(right: 8.r);
  static final EdgeInsets s44LEFTS20RIGHT =
      EdgeInsets.only(left: 44.r, right: 15.r);

  static final EdgeInsets s16L = EdgeInsets.only(left: 16.r);
  static final EdgeInsets s24L = EdgeInsets.only(left: 24.r);

  static final EdgeInsets s48Horizontal =
      EdgeInsets.symmetric(horizontal: 48.r);

  static final EdgeInsets s8L8R = EdgeInsets.only(left: 8.r, right: 8.r);

  static final EdgeInsets s17Top = EdgeInsets.only(top: 17.r);
  static final EdgeInsets s28Top16Right =
      EdgeInsets.only(top: 28.r, right: 16.r);
  static final EdgeInsets s28Top16Left = EdgeInsets.only(top: 28.r, left: 16.r);
  static final EdgeInsets s28Top28Left = EdgeInsets.only(top: 28.r, left: 50.r);
  static final EdgeInsets s109Top = EdgeInsets.only(bottom: 109.r);
  static final EdgeInsets s110Top = EdgeInsets.only(top: 110.r);
  static final EdgeInsets s120Bottom = EdgeInsets.only(bottom: 120.0.r);
  static final EdgeInsets s10Right17Left =
      EdgeInsets.only(right: 10.r, left: 17.r);
  static final EdgeInsets s17Left = EdgeInsets.only(left: 17.r);
  static final EdgeInsets s15Top = EdgeInsets.only(top: 15.r);
  static final EdgeInsets s26Top = EdgeInsets.only(top: 26.r);
  final EdgeInsets s16left8Right = EdgeInsets.only(left: 16.r, right: 8.r);
  final EdgeInsets s16 = EdgeInsets.only(left: 16.r, right: 16.r);
  final EdgeInsets s16Left16Right10Bottom =
      EdgeInsets.only(left: 16.r, right: 16.r, bottom: 10.r);
  static final EdgeInsets s16R = EdgeInsets.only(
    right: 16.r,
  );

  final EdgeInsets s16Left85Right10Bottom =
      EdgeInsets.only(right: 85.r, left: 16.r, bottom: 10.r);

  static const EdgeInsets s21Left19Bottom =
      EdgeInsets.only(left: 21, bottom: 19);

  final EdgeInsets s16Top64Left16Bottom16Right =
      const EdgeInsets.only(top: 16, left: 64, bottom: 16, right: 16);
  final EdgeInsets s8Top64Left16Bottom =
      EdgeInsets.only(left: 64.r, top: 8.r, bottom: 16.r);

  final EdgeInsets s25B = EdgeInsets.only(bottom: 25.r);
  final EdgeInsets s16T50 = EdgeInsets.only(left: 16.r, right: 16.r, top: 50.r);
  static final EdgeInsets s26Left17Right =
      EdgeInsets.only(left: 26.r, right: 17.r);

  static final EdgeInsets s17Left16Right =
      EdgeInsets.only(left: 17.r, right: 16.r);
  static const EdgeInsets s20Left8Right = EdgeInsets.only(left: 20, right: 8);
  static final EdgeInsets s16Top26Left17Right =
      EdgeInsets.only(left: 26.r, right: 17.r, top: 16);
  final EdgeInsets s16TopBtn =
      EdgeInsets.only(left: 16.r, right: 16.r, top: 5.r);
  final EdgeInsets s16TopBtn2 =
      EdgeInsets.only(left: 16.r, right: 16.r, top: 5.r);
  final EdgeInsets s16TopBtn3 =
      EdgeInsets.only(left: 16.r, right: 15.r, top: 20.r);
  final EdgeInsets s16TopBtn40 =
      EdgeInsets.only(left: 16.r, right: 15.r, top: 40.r);
  final EdgeInsets s10LeftBtn10 = EdgeInsets.fromLTRB(10.r, 0, 0, 10.r);

  static final EdgeInsets s08L21R = EdgeInsets.only(left: 8.r, right: 21.r);

  static final EdgeInsets s48Left24Top48Right8Bottom =
      EdgeInsets.fromLTRB(48.r, 24.r, 48.r, 8.r);
  final EdgeInsets s4Right = EdgeInsets.fromLTRB(10.r, 0, 0, 10.r);
  static final EdgeInsets s4R = EdgeInsets.only(right: 4.r);
  static final EdgeInsets s8All = EdgeInsets.all(8.r);
  static final EdgeInsets s1All = EdgeInsets.all(1.r);
  static final EdgeInsets s30All = EdgeInsets.all(30.r);
  static final EdgeInsets s30Top = EdgeInsets.only(top: 30.r);
  static final EdgeInsets s30Left = EdgeInsets.only(left: 30.r);
  static final EdgeInsets s60All = EdgeInsets.all(60.r);
  static final EdgeInsets s6All = EdgeInsets.all(6.r);
  static final EdgeInsets s2All = EdgeInsets.all(2.r);
  static final EdgeInsets s130All = EdgeInsets.all(130.r);
  static final EdgeInsets s24Horizontal8Vertical =
      EdgeInsets.symmetric(horizontal: 24.r,vertical: 8.r);
  static final EdgeInsets s30Horizontal =
      EdgeInsets.symmetric(horizontal: 60.r);
  final EdgeInsets s68Horizontal = EdgeInsets.symmetric(horizontal: 68.r);
  static final EdgeInsets s3Vertical = EdgeInsets.symmetric(vertical: 3.r);
  static final EdgeInsets s10Horizontal =
      EdgeInsets.symmetric(horizontal: 10.r);
  static final EdgeInsets s20Right = EdgeInsets.only(right: 20.r);
  static final EdgeInsets s20Horizontal =
      EdgeInsets.symmetric(horizontal: 20.r);

  static final EdgeInsets s20H08V =
      EdgeInsets.symmetric(horizontal: 20.r, vertical: 12.r);

  final EdgeInsets s16Left30Top16Right =
      EdgeInsets.fromLTRB(16.r, 30.r, 16.r, 0);

  static final EdgeInsets s24L32T0R32L =
      EdgeInsets.fromLTRB(24.r, 32.r, 0, 32.r);

  final EdgeInsets s4Left4Top14Right8Bottom8 =
      EdgeInsets.fromLTRB(4.r, 14.r, 8.r, 8.r);
  final EdgeInsets s4Only = EdgeInsets.only(right: 4.r);
  final EdgeInsets s12Horizontal = EdgeInsets.symmetric(horizontal: 12.r);
  static final EdgeInsets s16Horizontal =
      EdgeInsets.symmetric(horizontal: 16.r);

  static final EdgeInsets s6Horizontal = EdgeInsets.symmetric(horizontal: 6.r);
  static final EdgeInsets s16Horizontal32Vertical =
      EdgeInsets.symmetric(horizontal: 16.r, vertical: 32.r);

  static final EdgeInsets s4Horizontal8Vertical =
      EdgeInsets.symmetric(horizontal: 4.r, vertical: 8.r);

  static final EdgeInsets s16Horizontal18Vertical =
      EdgeInsets.symmetric(horizontal: 16.r, vertical: 18.r);
  static final EdgeInsets s16Horizontal17Vertical =
      EdgeInsets.symmetric(horizontal: 16.r, vertical: 17.r);

  static final EdgeInsets s10Horizontal7Vertical =
      EdgeInsets.symmetric(horizontal: 10.r, vertical: 7.r);

  final EdgeInsets s10Bottom16Left = EdgeInsets.only(bottom: 10.r, left: 16.r);
  final EdgeInsets s16Bottom16Left = EdgeInsets.only(bottom: 16.r, left: 16.r);
  final EdgeInsets s12Left = EdgeInsets.only(left: 12.r);
  final EdgeInsets s16Horizontal12Vertical =
      EdgeInsets.symmetric(horizontal: 16.r, vertical: 12.r);
  static final EdgeInsets s16Horizontal20Vertical =
      EdgeInsets.symmetric(horizontal: 16.r, vertical: 20.r);

  static final EdgeInsets s20Vertical = EdgeInsets.symmetric(vertical: 20.r);

  static final EdgeInsets s50V24H =
      EdgeInsets.symmetric(vertical: 50.r, horizontal: 24.r);

  static final EdgeInsets s16All = EdgeInsets.all(16.r);

  static final EdgeInsets s50Left90Right = EdgeInsets.only(left: 50.r,right: 90.r);

  static final EdgeInsets s20All = EdgeInsets.all(20.r);

  static final EdgeInsets s20H12V = EdgeInsets.symmetric(
    horizontal: 20.r,
    vertical: 12.r,
  );

  static final EdgeInsets s20V32H = EdgeInsets.symmetric(
    vertical: 20.r,
    horizontal: 32.r,
  );

  static final EdgeInsets s12All = EdgeInsets.all(12.r);

  static final EdgeInsets s16Top8Left16Right =
      EdgeInsets.only(top: 16.r, left: 8.r, right: 16.r);
  static final EdgeInsets s16AllExceptTop =
      EdgeInsets.only(left: 16.r, right: 16.r, bottom: 16.r);

  static final EdgeInsets s16T16B = EdgeInsets.only(top: 16.r, bottom: 16.r);
  static final EdgeInsets s16B16R = EdgeInsets.only(bottom: 16.r, right: 16.r);
  static final EdgeInsets s24T16R = EdgeInsets.only(right: 16.r, top: 24.r);
  static final EdgeInsets s67Right47Left89Top49Bottom =
      EdgeInsets.only(right: 67.r, left: 47.r, top: 89.r, bottom: 49.r);
  static final EdgeInsets s14Top = EdgeInsets.only(top: 14.r);

  static final EdgeInsets s16AllExceptRight =
      EdgeInsets.only(left: 16.r, top: 16.r, bottom: 16.r);

  static final EdgeInsets s5Top = EdgeInsets.only(top: 5.r);
  static final EdgeInsets s102Top = EdgeInsets.only(top: 102.r);
  static final EdgeInsets s20Top = EdgeInsets.only(top: 20.r);
  static final EdgeInsets s5Left = EdgeInsets.only(left: 5.r);
  static final EdgeInsets s8Top = EdgeInsets.only(top: 8.r);
  static final EdgeInsets s9Top = EdgeInsets.only(top: 9.r);
  static final EdgeInsets s16Top = EdgeInsets.only(top: 16.r);
  static final EdgeInsets s25Top = EdgeInsets.only(top: 25.r);
  static final EdgeInsets s25Left36Right =
      EdgeInsets.only(left: 25.r, right: 36.r);
  static final EdgeInsets s3Horizontal = EdgeInsets.symmetric(horizontal: 3.r);
  static final EdgeInsets s2Horizontal = EdgeInsets.symmetric(horizontal: 2.r);
  static final EdgeInsets s5Horizontal = EdgeInsets.symmetric(horizontal: 5.r);
  static final EdgeInsets s8Horizontal = EdgeInsets.symmetric(horizontal: 8.r);
  static final EdgeInsets s8Left6Right = EdgeInsets.only(left: 8.r, right: 6.r);
  final EdgeInsets s10Vertical = EdgeInsets.symmetric(vertical: 10.r);
  final EdgeInsets s64Vertical = EdgeInsets.symmetric(vertical: 64.r);
  static final EdgeInsets s35Top16Left16Right =
      EdgeInsets.only(top: 35.r, left: 16.r, right: 16.r);
  static final EdgeInsets s16Right = EdgeInsets.only(right: 16.r);
  final EdgeInsets s24Top16Down = EdgeInsets.only(top: 24.r, bottom: 16.r);
  static final EdgeInsets s24Top = EdgeInsets.only(top: 24.r);
  final EdgeInsets s24Top16Left16Right16Bottom = EdgeInsets.only(
    top: 24.r,
    left: 16.r,
    right: 16.r,
    bottom: 16.r,
  );
  final EdgeInsets s24Top8Left16Right16Bottom = EdgeInsets.only(
    top: 24.r,
    left: 8.r,
    right: 16.r,
    bottom: 16.r,
  );
  final EdgeInsets s24Top16Left16Bottom = EdgeInsets.only(
    top: 24.r,
    left: 16.r,
    bottom: 16.r,
  );
  final EdgeInsets s24Right24Top = EdgeInsets.only(right: 24.r, top: 24.r);
  final EdgeInsets s16Left16Top16Right =
      EdgeInsets.only(top: 16.r, left: 16.r, right: 16.r);
  final EdgeInsets s16Top24Btn = EdgeInsets.only(top: 16.r, bottom: 24.r);
  final EdgeInsets s16Top8Btn = EdgeInsets.only(top: 16.r, bottom: 8.r);
  final EdgeInsets s16Left16Right16Bottom =
      EdgeInsets.only(left: 16.r, right: 16.r, bottom: 16.r);
  final EdgeInsets s6Vertical16Horizontal = EdgeInsets.symmetric(
    vertical: 6.r,
    horizontal: 16.r,
  );
  static final EdgeInsets s6Vertical4Horizontal = EdgeInsets.symmetric(
    vertical: 6.r,
    horizontal: 4.r,
  );
  static final EdgeInsets s27Verticals33Horizontal = EdgeInsets.symmetric(
    horizontal: 33.r,
    vertical: 27.r,
  );
  final EdgeInsets s30Right10Top10Bottom = const EdgeInsets.only(
    right: 30,
    top: 10,
    bottom: 10,
  );
  final EdgeInsets s48Top35Bottom = const EdgeInsets.only(
    top: 48,
    bottom: 35,
  );
  final EdgeInsets s10Left14Right = EdgeInsets.only(left: 10.r, right: 14.r);
  final EdgeInsets s10Left5Right = EdgeInsets.only(left: 10.r, right: 5.r);
  final EdgeInsets s10Vertical20Horizontal = EdgeInsets.symmetric(
    vertical: 10.r,
    horizontal: 20.r,
  );
  final EdgeInsets s8Bottom = EdgeInsets.only(bottom: 8.r);
  final EdgeInsets s46Bottom = EdgeInsets.only(bottom: 46.r);
  final EdgeInsets s16Vertical = EdgeInsets.symmetric(vertical: 16.r);

  final EdgeInsets s16B = EdgeInsets.only(bottom: 16.r);
  final EdgeInsets s10T10B = EdgeInsets.only(top: 10.r, bottom: 10.r);
  static final EdgeInsets s10Top = EdgeInsets.only(top: 8.r);
  final EdgeInsets s10T10B5L =
      EdgeInsets.only(top: 10.r, bottom: 10.r, left: 5.r);
  final EdgeInsets s10T10B16L =
      EdgeInsets.only(top: 10.r, bottom: 10.r, left: 16.r);
  final EdgeInsets s16T16L16R =
      EdgeInsets.only(top: 16.r, left: 16.r, right: 16.r);
  final EdgeInsets s12T24B16L18R =
      EdgeInsets.only(top: 12.r, bottom: 12.r, left: 18.r, right: 16.r);
  final EdgeInsets s22T12B10L10R =
      EdgeInsets.only(top: 22.r, bottom: 12.r, left: 10.r, right: 10.r);
  final EdgeInsets s16L16R42B =
      EdgeInsets.only(bottom: 42.r, left: 16.r, right: 16.r);
  final EdgeInsets s16L16 =
      EdgeInsets.only(bottom: 42.r, left: 16.r, right: 16.r);
  final EdgeInsets s12T14B16L18R =
      EdgeInsets.only(top: 12.r, bottom: 14.r, left: 16.r, right: 18.r);
  final EdgeInsets s11T11B8L8R =
      EdgeInsets.only(top: 11.r, bottom: 11.r, left: 8.r, right: 8.r);
  final EdgeInsets s10 = EdgeInsets.all(10.r);
  static final EdgeInsets s3All = EdgeInsets.all(3.r);
  final EdgeInsets s8Horizontal11Vertical = EdgeInsets.symmetric(
    horizontal: 8.r,
    vertical: 11.r,
  );

  static EdgeInsets s3B = EdgeInsets.only(bottom: 3.r);
  static EdgeInsets s3L = EdgeInsets.only(left: 3.r);
  static EdgeInsets s12T = EdgeInsets.only(top: 12.r);
  final EdgeInsets s2B = EdgeInsets.only(bottom: 2.r);
  final EdgeInsets s2Bottom = EdgeInsets.only(bottom: 2.r);
  final EdgeInsets s40Top16Left16Right10Bottom = EdgeInsets.only(
    top: 40.r,
    left: 16.r,
    right: 16.r,
    bottom: 10.r,
  );
  final EdgeInsets s16Vertical24Top = EdgeInsets.only(
    left: 16.r,
    right: 16.r,
    top: 24,
  );
  static final EdgeInsets s16Left = EdgeInsets.only(left: 16.r);
  static final EdgeInsets s16L4T = EdgeInsets.only(left: 16.r, top: 4.r);
  static final EdgeInsets s16L8T = EdgeInsets.only(left: 16.r, top: 8.r);
  static final EdgeInsets s16L24T = EdgeInsets.only(left: 16.r, top: 24.r);
  static final EdgeInsets s08Horizontal14Vertical =
      EdgeInsets.symmetric(horizontal: 8.r, vertical: 14.r);
  static final EdgeInsets s4Vertical = EdgeInsets.symmetric(vertical: 4.r);
  static final EdgeInsets s8Vertical = EdgeInsets.symmetric(vertical: 8.r);
  static final EdgeInsets s24Vertical = EdgeInsets.symmetric(vertical: 24.r);
  static final EdgeInsets s14_5Horizontal =
      EdgeInsets.symmetric(horizontal: 14.5.r);
  final EdgeInsets s15Bottom = EdgeInsets.only(bottom: 15.r);
  final EdgeInsets s2Vertical = const EdgeInsets.symmetric(vertical: 2);
  static final EdgeInsets s10Right = EdgeInsets.only(right: 10.r);
  final EdgeInsets s20T20L20R12B =
      EdgeInsets.only(left: 20.r, right: 20.r, top: 20.r, bottom: 12.r);
  static final EdgeInsets s8bottom = EdgeInsets.only(bottom: 8.r);
  final EdgeInsets s16bottom = EdgeInsets.only(bottom: 16.r);
  static final EdgeInsets s5Right = EdgeInsets.only(right: 5.r);
  static final EdgeInsets s16L16R = EdgeInsets.only(right: 16.r, left: 16.r);
  static final EdgeInsets s14L14R = EdgeInsets.only(right: 14.r, left: 14.r);
  static final EdgeInsets s14TL =
      EdgeInsets.only(top: 14.r, left: 14.r, right: 2.r);

  static final EdgeInsets s32Horizontal =
      EdgeInsets.symmetric(horizontal: 32.r);

  static final EdgeInsets s16L16R16T = EdgeInsets.only(
    top: 16.r,
    right: 16.r,
    left: 16.r,
  );
  static final EdgeInsets s16L8B8T = EdgeInsets.only(
    left: 16.r,
    top: 8.r,
    bottom: 8.r,
  );
  static final EdgeInsets s16L16R8B8T = EdgeInsets.only(
    left: 16.r,
    right: 16.r,
    bottom: 8.r,
    top: 8.r,
  );
  static final EdgeInsets s16L16R24T =
      EdgeInsets.only(right: 16.r, left: 16.r, top: 24.r);

  static final EdgeInsets s16L8R16T8B =
      EdgeInsets.only(left: 16.r, right: 8.r, top: 16.r, bottom: 8.r);

  static final EdgeInsets s24T = EdgeInsets.only(top: 24.r);
  static final EdgeInsets s22L = EdgeInsets.only(left: 22.r);
  static final EdgeInsets s22b = EdgeInsets.only(bottom: 22.r);
  static final EdgeInsets s24T40B = EdgeInsets.only(top: 24.r, bottom: 40.r);
  static final EdgeInsets s24B = EdgeInsets.only(bottom: 24.r);
  static final EdgeInsets s24BsR16 = EdgeInsets.only(bottom: 24.r, right: 16);
  static final EdgeInsets s34B = EdgeInsets.only(bottom: 34.r);
  static final EdgeInsets s35B = EdgeInsets.only(bottom: 35.r);
  static final EdgeInsets s35B55L55R =
      EdgeInsets.only(bottom: 35.r, left: 55.r, right: 55.r);

  static final EdgeInsets s52B = EdgeInsets.only(bottom: 52.r);
  static final EdgeInsets s93Left45Right63Top = EdgeInsets.only(left: 93.r,right: 45.r,top: 63.r);
  static final EdgeInsets s52R = EdgeInsets.only(right: 52.r);
  static final EdgeInsets s32R = EdgeInsets.only(right: 32.r);
  static final EdgeInsets s4T = EdgeInsets.only(top: 4.r);
  static final EdgeInsets s40T = EdgeInsets.only(top: 40.r);
  static final EdgeInsets s40R = EdgeInsets.only(right: 40.r);
  static final EdgeInsets s40T40B = EdgeInsets.only(top: 40.r, bottom: 40.r);
  static final EdgeInsets s72T25B = EdgeInsets.only(top: 72.r, bottom: 25.r);
  static final EdgeInsets s16T25B = EdgeInsets.only(top: 16.r, bottom: 25.r);

  static final EdgeInsets s4T32B = EdgeInsets.only(top: 4.r, bottom: 32.r);
  static final EdgeInsets s24Left8Top24Right19Bottom =
      EdgeInsets.fromLTRB(24.r, 8.r, 24.r, 19.r);
  static final EdgeInsets s16Horizontal10Vertical =
      EdgeInsets.fromLTRB(16.r, 10.r, 16.r, 10.r);

  static final EdgeInsets s24All = EdgeInsets.all(24.r);

  static final EdgeInsets s40All = EdgeInsets.all(40.r);
}
