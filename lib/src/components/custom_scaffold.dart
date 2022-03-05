import 'package:flutter/material.dart';

class BaseScaffold extends Scaffold {
  const BaseScaffold(
      {Key? key,
      String? title,
      bool extendBodyBehindAppBar = false,
      PreferredSizeWidget? appBar,
      Color? backgroundColor,
      required Widget body,
      Widget? drawer,
      Widget? floatingActionButton,
      Widget? bottomNavigationBar,
      FloatingActionButtonLocation? floatingActionButtonLocation})
      : super(
          key: key,
          extendBodyBehindAppBar: extendBodyBehindAppBar,
          appBar: appBar,
          backgroundColor: backgroundColor,
          drawer: drawer,
          body: body,
					bottomNavigationBar: bottomNavigationBar,
          floatingActionButton: floatingActionButton,
          floatingActionButtonLocation: floatingActionButtonLocation,
        );
}
