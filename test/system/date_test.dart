import 'package:flutter_test/flutter_test.dart';
import 'package:my_plugin/src/common_utils/src/encrypt_util.dart';

void main() {
  testWidgets('date test', (WidgetTester tester) async {
    final id = DateTime.now().millisecondsSinceEpoch ~/1000;

    // expect(id, 'df1546979d56fe7fbf8ab2b24cc54668');
  });

}
