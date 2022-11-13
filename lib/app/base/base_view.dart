import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../resources/app_color_extension.dart';

abstract class BaseView extends StatelessWidget{
   BaseView({super.key});
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  PreferredSizeWidget? appBar(final BuildContext context) => null;

  // You can Override it
  bool safeArea() => true;

  // You can Override it
  bool resizeToAvoidBottomInset() => true;

  Future<bool> onWillPop(final BuildContext context) async {
    Navigator.of(context).pop();
    return true;
  }

  Widget body(final BuildContext context);

  @override
  Widget build(final BuildContext context) {
    return annotatedRegion(context);
  }

  Widget annotatedRegion(final BuildContext context) => AnnotatedRegion(
    value: SystemUiOverlayStyle(
      //Status bar color for android
      statusBarColor: statusBarColor(),
      statusBarIconBrightness: Brightness.light,
    ),
    child: Material(
      color: Colors.transparent,
      child: pageContent(context),
    ),
  );

  Widget pageScaffold(final BuildContext context) => WillPopScope(
    onWillPop: () => onWillPop(context),
    child:Scaffold(
      //sets ios status bar color
      backgroundColor: pageBackgroundColor(),
      key: globalKey,
      appBar: appBar(context),
      floatingActionButton: floatingActionButton(),
      floatingActionButtonLocation: floatingActionButtonLocation(),
      body: body(context),
      bottomNavigationBar: bottomNavigationBar(context),
      drawer: drawer(),
      resizeToAvoidBottomInset: resizeToAvoidBottomInset(),
    ),
    /* child: Platform.isIOS
          ? GestureDetector(
              onVerticalDragUpdate: (final details) {},
              onHorizontalDragUpdate: (final details) {
                if (details.delta.direction <= 0) {
                  onWillPop(context);
                }
              },
              child: Scaffold(
                //sets ios status bar color
                backgroundColor: pageBackgroundColor(),
                key: globalKey,
                appBar: appBar(context),
                floatingActionButton: floatingActionButton(),
                floatingActionButtonLocation: floatingActionButtonLocation(),
                body: body(context),
                bottomNavigationBar: bottomNavigationBar(context),
                drawer: drawer(),
                resizeToAvoidBottomInset: resizeToAvoidBottomInset(),
              ),
            )
          : Scaffold(
              //sets ios status bar color
              backgroundColor: pageBackgroundColor(),
              key: globalKey,
              appBar: appBar(context),
              floatingActionButton: floatingActionButton(),
              floatingActionButtonLocation: floatingActionButtonLocation(),
              body: body(context),
              bottomNavigationBar: bottomNavigationBar(context),
              drawer: drawer(),
              resizeToAvoidBottomInset: resizeToAvoidBottomInset(),
            ),*/
  );

  Widget pageContent(final BuildContext context) => safeArea()
      ? SafeArea(
    child: pageScaffold(context),
  )
      : pageScaffold(context);

  Widget showErrorSnackBar(final String message) {
    var snackBar = SnackBar(content: Text(message));
    WidgetsBinding.instance.addPostFrameCallback((final timeStamp) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
    });

    return Container(
      color: AppColors.background,
    );
  }

  Color pageBackgroundColor() => AppColors.white;

  Color statusBarColor() => Colors.transparent;

  Widget? floatingActionButton() => null;

  Widget? bottomNavigationBar(final BuildContext context) => null;

  Widget? drawer() => null;

/*  Widget _showLoading() => Center(
    child: Container(
      color: Colors.transparent,
      margin: AppSpacing.s30All,
      child:  CupertinoActivityIndicator(
        radius: AppSize.s30.r,
      ),
    ),
  );*/

  FloatingActionButtonLocation? floatingActionButtonLocation() => FloatingActionButtonLocation.endFloat;


}