import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:chatta/widgets/ChatAppBar.dart';

void main() {
  const MaterialApp app = MaterialApp(
      home: Scaffold(
    body: const ChatAppBar(),
  ));
  testWidgets("ChatAppBar Page UI Test", (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.text('Bruce Banner'), findsOneWidget);
    expect(find.text('@hulk-smashh'), findsOneWidget);
    expect(find.byType(Icon), findsNWidgets(1));
    expect(find.byType(CircleAvatar), findsOneWidget);
  });
}
