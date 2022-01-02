import 'package:flutter_test/flutter_test.dart';
import 'package:my_plugin/src/common_utils/src/encrypt_util.dart';

void main() {
  testWidgets('encodeMd5 test', (WidgetTester tester) async {
    var digest = EncryptUtil.encodeMd5('2017-11-07T07:43:10.690+0000');

    // var x = digest.bytes;
    expect(digest, 'df1546979d56fe7fbf8ab2b24cc54668');
  });

}
