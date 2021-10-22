import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class BaseListViewPage extends Scaffold {
  BaseListViewPage(
      {Key? key,
      String? title,
      PreferredSizeWidget? appBar,
      required List<Widget> items,
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
          drawer: drawer,
          body: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return items[index];
              }),
          floatingActionButton: floatingActionButton,
          floatingActionButtonLocation: floatingActionButtonLocation,
        );
}
