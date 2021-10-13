import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class FlavorHelper {
  static const String kShowThemeIcon = 'showThemeIcon';

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

  static FlavorConfig config(Map<String, dynamic> variables,
      {bool develop = true}) {
    return FlavorConfig(
        name: develop ? "DEVELOP" : "PRODUCT",
        color: Colors.red,
        location: BannerLocation.bottomStart,
        variables: variables);
  }
}
