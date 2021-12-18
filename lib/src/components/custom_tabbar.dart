import 'package:flutter/material.dart';

class CustomTabbar extends StatelessWidget {

  /// The total number of tabs.
  ///
  /// Typically greater than one. Must match [TabBar.tabs]'s and
  /// [TabBarView.children]'s length.
  final int length;
  final double height;
  final double appbarHeight;
  final Color? scaffoldBackgroundColor;
  final Color? appbarBackgroundColor;
  final TabController? tabBarController;
  final TabController? tabBarViewController;
  final Color? indicatorColor;
  final Color? unselectedLabelColor;
  final List<Widget> tabs;
  final List<Widget> tabbarViews;
  const CustomTabbar(
      {Key? key,
      required this.height,
      required this.length,
      required this.appbarHeight,
      required this.tabs,
      required this.tabbarViews,
      this.scaffoldBackgroundColor,
      this.appbarBackgroundColor,
      this.tabBarController,
      this.tabBarViewController,
      this.indicatorColor,
      this.unselectedLabelColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        child: DefaultTabController(
          length: length,
          child: Scaffold(
            backgroundColor: scaffoldBackgroundColor,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(appbarHeight),
              child: AppBar(
								leading: Container(),
                backgroundColor: appbarBackgroundColor,
                bottom: TabBar(
                    controller: tabBarController,
                    indicatorColor: indicatorColor,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 3.0,
                    unselectedLabelColor: unselectedLabelColor,
                    labelColor: Colors.white,
                    isScrollable: true,
                    tabs: tabs),
              ),
            ),
            body: TabBarView(
                controller: tabBarViewController,
                physics: const NeverScrollableScrollPhysics(),
                children: tabbarViews),
          ),
        ));
  }
}
