import 'package:flutter/material.dart';

class BaseScaffold extends Scaffold {
  const BaseScaffold(
      {Key? key,
      String? title,
      PreferredSizeWidget? appBar,
      required Widget body,
      Widget? floatingActionButton,
      FloatingActionButtonLocation? floatingActionButtonLocation})
      : super(
          key: key,
          appBar: appBar,
          // backgroundColor: Colors.white,
          body: body,
          floatingActionButton: floatingActionButton,
          floatingActionButtonLocation: floatingActionButtonLocation,
        );
}
