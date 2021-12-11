import 'dart:convert' as convert;
import 'package:logger/logger.dart';

class Constant {
  /// App运行在Release环境时，inProduction为true；当App运行在Debug和Profile环境时，inProduction为false
  // static const bool inProduction = kReleaseMode;
  static const bool inProduction = false;
}

/// 输出Log工具类
class Log {
  static const String tag = 'DEER-LOG';

  // Small, easy to use and extensible logger which prints beautiful logs
  // https://pub.dev/packages/logger
  static late Logger logger;

  static void init() {
    logger = Logger();
  }

  static void d(String msg, {String tag = tag}) {
    if (!Constant.inProduction) {
      logger.v(msg);
    }
  }

  static void e(String msg, {String tag = tag}) {
    if (!Constant.inProduction) {
      logger.e(msg);
    }
  }

  static void json(String msg, {String tag = tag}) {
    if (!Constant.inProduction) {
      try {
        final dynamic data = convert.json.decode(msg);
        if (data is Map) {
          _printMap(data);
        } else if (data is List) {
          _printList(data);
        } else
          logger.v(msg);
      } catch (e) {
        logger.e(msg);
      }
    }
  }

  // https://github.com/Milad-Akarie/pretty_dio_logger
  static void _printMap(Map data,
      {String tag = tag,
      int tabs = 1,
      bool isListItem = false,
      bool isLast = false}) {
    final bool isRoot = tabs == 1;
    final String initialIndent = _indent(tabs);
    tabs++;

    if (isRoot || isListItem) {
      logger.v('$initialIndent{');
    }

    data.keys.toList().asMap().forEach((index, dynamic key) {
      final bool isLast = index == data.length - 1;
      dynamic value = data[key];
      if (value is String) {
        value = '"$value"';
      }
      if (value is Map) {
        if (value.isEmpty)
          logger.v(
            '${_indent(tabs)} $key: $value${!isLast ? ',' : ''}',
          );
        else {
          logger.v('${_indent(tabs)} $key: {');
          _printMap(value, tabs: tabs);
        }
      } else if (value is List) {
        if (value.isEmpty) {
          logger.v('${_indent(tabs)} $key: ${value.toString()}');
        } else {
          logger.v('${_indent(tabs)} $key: [');
          _printList(value, tabs: tabs);
          logger.v('${_indent(tabs)} ]${isLast ? '' : ','}');
        }
      } else {
        final msg = value.toString().replaceAll('\n', '');
        logger.v('${_indent(tabs)} $key: $msg${!isLast ? ',' : ''}');
      }
    });

    logger.v('$initialIndent}${isListItem && !isLast ? ',' : ''}');
  }

  static void _printList(List list, {String tag = tag, int tabs = 1}) {
    list.asMap().forEach((i, dynamic e) {
      final bool isLast = i == list.length - 1;
      if (e is Map) {
        if (e.isEmpty) {
          logger.v('${_indent(tabs)}  $e${!isLast ? ',' : ''}');
        } else {
          _printMap(e, tabs: tabs + 1, isListItem: true, isLast: isLast);
        }
      } else {
        logger.v('${_indent(tabs + 2)} $e${isLast ? '' : ','}');
      }
    });
  }

  static String _indent([int tabCount = 1]) => '  ' * tabCount;
}
