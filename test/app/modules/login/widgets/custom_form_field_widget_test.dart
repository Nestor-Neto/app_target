import 'package:flutter_test/flutter_test.dart';

main() {
  group('CustomFormFieldWidget', () {
    testWidgets('has a title and message', (WidgetTester tester) async {
      // await tester.pumpWidget(buildTestableWidget(const CustomFormFieldWidget(title: 'T', obscureText: true, limitChar: 20,)));
      final titleFinder = find.text('T');
      expect(titleFinder, findsOneWidget);
    });
  });
}
