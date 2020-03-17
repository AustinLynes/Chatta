import 'package:chatta/config/Palette.dart';
import "package:flutter/material.dart";
import 'package:intl/intl.dart';

class ChatItemWidget extends StatelessWidget {
  final int index;
  const ChatItemWidget(this.index);
  @override
  Widget build(BuildContext context) {
    // for now using even odd to determine if the message is sent or recieved...
    if (index % 2 == 0) {
      // sent messages
      return Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Text(
                    "This is a sent Message",
                    style: TextStyle(color: Palette.selfMessageColor),
                  ),
                  padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  width: 200.0,
                  decoration: BoxDecoration(
                    color: Palette.selfMessageBackgroundColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  margin: EdgeInsets.only(right: 10.0),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.end, // to the right ->
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: Text(
                    DateFormat('dd MMM kk:mm').format(
                      DateTime.fromMicrosecondsSinceEpoch(
                          DateTime.now().millisecond),
                    ),
                    style: TextStyle(
                      color: Palette.greyColor,
                      fontSize: 12.0,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  margin: EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
                )
              ],
            )
          ],
        ),
      );
    } else {
      // recived messages
      return Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Text(
                    'This is a received message',
                    style: TextStyle(color: Palette.otherMessageColor),
                  ),
                  padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  width: 200.0,
                  decoration: BoxDecoration(
                      color: Palette.otherMessageBackgroundColor,
                      borderRadius: BorderRadius.circular(8.0)),
                  margin: EdgeInsets.only(left: 10.0),
                )
              ],
            ),
            Container(
              child: Text(
                DateFormat('dd MMM kk:mm').format(
                    DateTime.fromMillisecondsSinceEpoch(
                        DateTime.now().millisecond)),
                style: TextStyle(
                    color: Palette.greyColor,
                    fontSize: 12.0,
                    fontStyle: FontStyle.normal),
              ),
              margin: EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        margin: EdgeInsets.only(bottom: 10.0),
      );
    }
  }
}
