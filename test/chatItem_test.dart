import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:chatta/widgets/ChatItemWidget.dart';

void main() {
  const MaterialApp app = MaterialApp(
      home: Scaffold(
    body: const ChatItemWidget(0),
  ));
  testWidgets("ChatAppBar Page UI Test", (WidgetTester tester) async {
    await tester.pumpWidget(app);
    // should find 3 Container Widgets
    expect(find.byType(Container), findsNWidgets(3));
    // should find 1 Column Widget
    expect(find.byType(Column), findsNWidgets(1));
    // should find 2 Row Widgets
    expect(find.byType(Row), findsNWidgets(2));
    // should find 2 Text widgets
    expect(find.byType(Text), findsNWidgets(2));
  });
}
