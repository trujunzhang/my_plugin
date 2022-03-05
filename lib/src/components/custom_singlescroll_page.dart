import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class BaseSingleViewPage extends Scaffold {
  BaseSingleViewPage(
      {Key? key,
      bool extendBodyBehindAppBar = false,
      PreferredSizeWidget? appBar,
			Color? backgroundColor,
      required Widget body,
      WillPopCallback? onWillPop,
      Brightness brightness = Brightness.light,
      Widget? drawer,
      EdgeInsetsGeometry? padding,
      Widget? bottomNavigationBar,
      Widget? floatingActionButton,
      FloatingActionButtonLocation? floatingActionButtonLocation})
      : super(
          key: key,
          extendBodyBehindAppBar: extendBodyBehindAppBar,
          appBar: appBar,
          backgroundColor: backgroundColor,
          drawer: drawer,
          body: SingleChildScrollView(
            padding: padding,
            child: body,
          ),
					bottomNavigationBar: bottomNavigationBar,
          floatingActionButton: floatingActionButton,
          floatingActionButtonLocation: floatingActionButtonLocation,
        );
}
