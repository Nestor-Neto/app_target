import 'package:flutter_test/flutter_test.dart';

main() {
  group('ListItemWidget', () {
    testWidgets('has a title and message', (WidgetTester tester) async {
      //await tester.pumpWidget(buildTestableWidget(ListItemWidget(text: 'T', edit: () {  }, delete: () {  }, title: 'T',)));
      final titleFinder = find.text('T');
      expect(titleFinder, findsOneWidget);
    });
  });
}
