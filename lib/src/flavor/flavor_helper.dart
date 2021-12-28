import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class FlavorHelper {
  static const String kShowThemeIcon = 'showThemeIcon';
  static const String kAppbarHeight = 'appbarHeight';

  static bool shouldShowToggleThemeIcon() {
    if (FlavorConfig.instance.name != null &&
        FlavorConfig.instance.name == 'DEVELOP') {
      dynamic showIcon = FlavorConfig.instance.variables[kShowThemeIcon];
      if (showIcon != null) {
        return showIcon as bool;
      }
    }

    return false;
  }

  static double getAppbarHeight() {
    dynamic height = FlavorConfig.instance.variables[kAppbarHeight];
    if (height != null) {
      return height;
    }
    return 56.0;
  }

  static FlavorConfig config(Map<String, dynamic> variables,
      {bool develop = true}) {
    return FlavorConfig(
        name: develop ? "DEVELOP" : "PRODUCT",
        color: Colors.red,
        location: BannerLocation.bottomStart,
        variables: variables);
  }
}
