import 'package:chatta/pages/ConversationPage.dart';
import 'package:chatta/widgets/ChatAppBar.dart';
import 'package:chatta/widgets/ChatListWidget.dart';
import 'package:chatta/widgets/InputWidget.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {
  const MaterialApp app = MaterialApp(
      home: Scaffold(
    body: const ConversationPage(),
  ));
  testWidgets("Conversation Page UI Test", (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(ChatAppBar), findsOneWidget);
    expect(find.byType(InputWidget), findsOneWidget);
    expect(find.byType(ChatListWidget), findsOneWidget);
  });
}
