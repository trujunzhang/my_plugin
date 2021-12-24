import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class BaseSingleViewPage extends Scaffold {
  BaseSingleViewPage(
      {Key? key,
      String? title,
      PreferredSizeWidget? appBar,
			Color? backgroundColor,
      required Widget body,
      List<Widget>? actions,
      AppBarBackType? leadType,
      WillPopCallback? onWillPop,
      Brightness brightness = Brightness.light,
      Widget? floatingActionButton,
      Color appBarBackgroundColor = Colors.white,
      Color? titleColor,
      bool centerTitle = true,
      Widget? drawer,
      EdgeInsetsGeometry? padding,
      FloatingActionButtonLocation? floatingActionButtonLocation})
      : super(
          key: key,
          appBar: appBar,
          backgroundColor: backgroundColor,
          drawer: drawer,
          body: SingleChildScrollView(
            padding: padding,
            child: body,
          ),
          floatingActionButton: floatingActionButton,
          floatingActionButtonLocation: floatingActionButtonLocation,
        );
}
