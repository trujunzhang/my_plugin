import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_plugin/src/extensions/string.dart';

void main() {
  testWidgets('updateNewId', (WidgetTester tester) async {
    expect('hello world'.inCaps, 'Hello world');
    expect('hello world'.allInCaps, 'HELLO WORLD');
    expect('hello world'.capitalizeFirstofEach, 'Hello World');
  });
}
