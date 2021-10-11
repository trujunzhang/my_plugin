import 'package:flutter/material.dart';
import 'package:my_plugin/src/flavor/flavor_helper.dart';
import 'package:my_plugin/src/services/theme_service.dart';

class ActionHelper {
  static List<Widget>? withDebug(List<Widget>? actions) {
    bool shouldShowToggleThemeIcon = FlavorHelper.shouldShowToggleThemeIcon();
    if (shouldShowToggleThemeIcon) {
      List<Widget> nextActions = actions ?? [];
      nextActions.add(getToggleThemeIcon());
      return nextActions;
    }
    return actions;
  }
}

Widget getToggleThemeIcon() {
  bool isDarkMode = ThemeService.isDarkMode();
  return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {
          ThemeService().switchTheme();
        },
        child: Icon(
					isDarkMode?
          Icons.dark_mode:
          Icons.light_mode,
          size: 26.0,
        ),
      ));
}
