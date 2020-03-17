import "package:flutter/material.dart";
// CHATTA PKGS -------------------------------------
import "pages/ConversationPageList.dart";

void main() => runApp(Chatta());

class Chatta extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chatta",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ConversationPageList(),
    );
  }
}
