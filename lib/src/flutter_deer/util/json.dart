import 'dart:convert';

import 'package:flutter/services.dart';

Future<Map<String, dynamic>> loadJsonObject(String asset) async {
  String data = await rootBundle.loadString(asset);
  return json.decode(data);
}

Future<List<dynamic>> loadJsonList(String asset) async {
  String data = await rootBundle.loadString(asset);
  List<dynamic> list = json.decode(data);
  return list;
}
