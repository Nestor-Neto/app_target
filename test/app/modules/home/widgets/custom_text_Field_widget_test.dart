import 'package:app_target/app/modules/home/widgets/custom_text_Field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('CustomTextFieldWidget', () {
    // testWidgets('has a title and message', (WidgetTester tester) async {
    //   //await tester.pumpWidget(buildTestableWidget(CustomTextFieldWidget(title: 'T')));
    //   await tester.pumpWidget(const CustomTextFieldWidget(obscureText: 'T'));
    //   final titleFinder = find.text('T');
    //   expect(titleFinder, findsOneWidget);
    // });
  });
  testWidgets('finds a widget using a Key', (tester) async {
    // Define the test key.
    const testKey = Key('K');

    // Build a MaterialApp with the testKey.
    await tester.pumpWidget(const CustomTextFieldWidget(
      key: testKey,
      obscureText: true,
    ));

    // Find the MaterialApp widget using the testKey.
    expect(find.byKey(testKey), findsOneWidget);
  });
}
