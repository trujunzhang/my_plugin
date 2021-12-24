import 'package:flutter/material.dart';

class BaseScaffold extends Scaffold {
  const BaseScaffold(
      {Key? key,
      String? title,
      PreferredSizeWidget? appBar,
			Color? backgroundColor,
      required Widget body,
      Widget? drawer,
      Widget? floatingActionButton,
      FloatingActionButtonLocation? floatingActionButtonLocation})
      : super(
          key: key,
          appBar: appBar,
          backgroundColor: backgroundColor,
          drawer: drawer,
          body: body,
          floatingActionButton: floatingActionButton,
          floatingActionButtonLocation: floatingActionButtonLocation,
        );
}
