import 'package:flutter/material.dart';

import 'action_helper.dart';

/// appbar 返回按钮类型
enum AppBarBackType { Back, Close, None }

const double kNavigationBarHeight = 44.0 + 12.0;

// 自定义 AppBar
class MyAppBar extends AppBar implements PreferredSizeWidget {
  MyAppBar(
      {Key? key,
      Widget? title,
      AppBarBackType? leadingType,
      WillPopCallback? onWillPop,
      Widget? leading,
      Brightness? brightness,
      Color? backgroundColor,
      List<Widget>? actions,
      bool automaticallyImplyLeading = true,
      bool centerTitle = true,
      double? elevation,
      PreferredSizeWidget? bottom})
      : super(
            key: key,
            title: title,
            centerTitle: centerTitle,
            backgroundColor: backgroundColor,
            automaticallyImplyLeading: automaticallyImplyLeading,
            leading: leading ??
                (leadingType == AppBarBackType.None
                    ? Container()
                    : AppBarBack(
                        leadingType ?? AppBarBackType.Back,
                        onWillPop: onWillPop,
                      )),
            actions: ActionHelper.withDebug(actions),
            // elevation: elevation ?? 0.5,
            elevation: elevation,
            bottom: bottom);

  @override
  get preferredSize => const Size.fromHeight(kNavigationBarHeight);
}

// 自定义返回按钮
class AppBarBack extends StatelessWidget {
  final AppBarBackType _backType;
  final Color? color;
  final WillPopCallback? onWillPop;

  const AppBarBack(this._backType, {Key? key, this.onWillPop, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final willBack = onWillPop == null ? true : await onWillPop!();
        if (!willBack) return;
        Navigator.pop(context);
      },
      child: _backType == AppBarBackType.Close
          ? Container(
              child: Icon(Icons.close, size: 24.0, color: color),
            )
          : Container(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(Icons.arrow_back_ios_new, size: 24.0, color: color),
            ),
    );
  }
}

class MyTitle extends StatelessWidget {
  final String _title;
  final Color? color;

  const MyTitle(this._title, {Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(_title,
        style:
            TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.w500));
  }
}
