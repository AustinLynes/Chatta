import 'package:flutter/material.dart';
// CHATTA PKGS -------------------------------------
import 'package:chatta/widgets/InputWidget.dart';
import 'package:chatta/widgets/ChatListWidget.dart';
import 'package:chatta/widgets/ChatAppBar.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: ChatAppBar(),
          body: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  ChatListWidget(),
                  InputWidget(),
                ],
              ),
            ],
          )),
    );
  }
}
