import 'package:flutter_test/flutter_test.dart';
import 'package:my_plugin/src/common_utils/src/md5_utils.dart';

void main() {
  testWidgets('md5 functions test', (WidgetTester tester) async {
    var digest = getMd5Str('2017-11-07T07:43:10.690+0000');

    // var x = digest.bytes;
    expect(digest, 'df1546979d56fe7fbf8ab2b24cc54668');
  });

   testWidgets('documentIdFromCurrentDate functions test', (WidgetTester tester) async {
    var digest = documentIdFromCurrentDate();

    var x = 0;
  });
}
