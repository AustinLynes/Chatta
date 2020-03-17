import 'package:chatta/pages/ConversationPage.dart';
import 'package:flutter/material.dart';
import 'package:chatta/pages/ConversationPageList.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const MaterialApp app = MaterialApp(
    home: Scaffold(
      body: const ConversationPageList(),
    ),
  );
  testWidgets("ConversationPageList UI Test", (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(ConversationPage), findsOneWidget);
    expect(find.byType(PageView), findsOneWidget);
  });
}
