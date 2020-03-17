import 'package:chatta/config/Palette.dart';
import "package:flutter/material.dart";

class InputWidget extends StatelessWidget {
  final TextEditingController textEditingController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Material(
            child: new Container(
              margin: EdgeInsets.symmetric(horizontal: 1.0),
              child: new IconButton(
                  icon: new Icon(
                    Icons.face,
                    color: Palette.primaryColor,
                  ),
                  onPressed: () => print("Emoji button pressed")),
            ),
            color: Colors.white,
          ),
          // TEXT FIELD ------------------------------------------------------
          Flexible(
            child: Container(
              child: TextField(
                style:
                    TextStyle(color: Palette.primaryTextColor, fontSize: 15.0),
                controller: textEditingController,
                decoration: InputDecoration.collapsed(
                  hintText: "Send a Message",
                  hintStyle: TextStyle(color: Palette.greyColor),
                ),
              ),
            ),
          ),
          // -------------------------------------------------------
          // SEND MESSAGE BUTTON------------------------------------
          Material(
            child: new Container(
              margin: new EdgeInsets.symmetric(horizontal: 8.0),
              child: new IconButton(
                icon: Icon(Icons.send),
                onPressed: () => print('Send Button Pressed'),
                color: Palette.primaryColor,
              ),
            ),
            color: Colors.white,
          ),
        ],
      ),
      width: double.infinity,
      height: 50.0,
      decoration: new BoxDecoration(
          border: new Border(
            top: new BorderSide(color: Palette.greyColor, width: 0.5),
          ),
          color: Colors.white),
    );
  }
}
