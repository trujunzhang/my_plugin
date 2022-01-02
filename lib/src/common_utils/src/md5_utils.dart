import 'dart:convert';

import 'package:crypto/crypto.dart';

/**
 * @Author: Trujunzhang
 * @GitHub: https://github.com/trujunzhang
 * @Description: Md5 Util.
 * @Date: 2021/01/01
 */

/// Md5 Util.
String getMd5Str(String str) {
  var bytes = utf8.encode(str); // data being hashed
  var digest = md5.convert(bytes).toString();
  return digest;
}

String documentIdFromCurrentDate() {
  String str = DateTime.now().toIso8601String();
  return getMd5Str(str);
}
