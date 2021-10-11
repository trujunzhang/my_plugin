import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_plugin/src/flutter_deer/util/hex_color.dart';

void main() {
  testWidgets('updateNewId', (WidgetTester tester) async {
    expect(HexColor('#54D3C2').value, const Color(0xFF54D3C2).value);
  });
}
