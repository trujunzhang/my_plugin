import 'dart:convert';

import 'package:flutter/services.dart';

Future<Map<String, dynamic>> loadJson(String asset) async {
  String data = await rootBundle.loadString(asset);
  return json.decode(data);
}
