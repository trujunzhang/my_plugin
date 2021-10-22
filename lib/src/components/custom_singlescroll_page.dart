import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class BaseSingleViewPage extends Scaffold {
  BaseSingleViewPage(
      {Key? key,
      String? title,
      PreferredSizeWidget? appBar,
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
          appBar: appBar ??
              MyAppBar(
                brightness: Brightness.light,
                leadingType: leadType ?? AppBarBackType.Back,
                onWillPop: onWillPop,
                actions: actions ?? [],
                centerTitle: centerTitle,
                title:
                    MyTitle(title ?? '', color: titleColor ?? Colors.grey[800]),
                backgroundColor: appBarBackgroundColor,
              ),
          // backgroundColor: Colors.white,
          drawer: drawer,
          body: SingleChildScrollView(
            padding: padding,
            child: body,
          ),
          floatingActionButton: floatingActionButton,
          floatingActionButtonLocation: floatingActionButtonLocation,
        );
}
