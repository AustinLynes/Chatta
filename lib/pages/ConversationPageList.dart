import 'package:chatta/pages/ConversationPage.dart';
import 'package:flutter/material.dart';

class ConversationPageList extends StatefulWidget {

  @override
  _ConversationPageListState createState() => _ConversationPageListState();
}

class _ConversationPageListState extends State<ConversationPageList> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        ConversationPage(),
        ConversationPage(),
        ConversationPage(),
      ],
    );
  }
}
