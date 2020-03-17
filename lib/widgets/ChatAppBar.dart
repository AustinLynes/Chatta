import 'package:chatta/config/Assets.dart';
import 'package:chatta/config/Palette.dart';
import 'package:flutter/material.dart';

/*
    CONTAINER 
    | L LEFT SIDE
    |   L FIRST ROW
    |     L ICON
    |     L CONTACT INFO
    |       L NAME
    |       L USER TAG
    |   L SECOND ROW 
 */

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height = 150;

  @override
  Widget build(BuildContext context) {
    // text style for the names
    var textHeading = TextStyle(color: Palette.primaryTextColor, fontSize: 20);
    // text style for everything else
    var textStyle = TextStyle(color: Palette.secondaryTextColor);

    double width = MediaQuery.of(context).size.width; // gets the screen width
     return Material(
        child: Container(
            decoration: new BoxDecoration(boxShadow: [ //adds a shadow to the appbar
              new BoxShadow(
              color: Colors.black,
              blurRadius: 5.0,
            )]),
            child:  Container(
                color: Palette.primaryBackgroundColor,
                child: Row(children: <Widget>[
              Expanded( //we're dividing the appbar into 7 : 3 ratio. 7 is for content and 3 is for the display picture.
                  flex: 7,
                  child: Center(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                          height: 70 - (width * .06),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                      child: Icon(
                                    Icons.attach_file,
                                    color: Palette.secondaryColor,
                                  ))),
                              Expanded(
                                  flex: 6,
                                  child: Container(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text('Bruce Banner', style: textHeading),
                                      Text('@hulk-smashh', style: textStyle)
                                    ],
                                  ))),
                            ],
                          )),
                      //second row containing the buttons for media
                      Container(
                          height: 23,
                          padding: EdgeInsets.fromLTRB(20, 5, 5, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Photos',
                                style: textStyle,
                              ),
                              VerticalDivider(
                                width: 30,
                                color: Palette.primaryTextColor,
                              ),
                              Text(
                                'Videos',
                                style: textStyle,
                              ),
                              VerticalDivider(
                                width: 30,
                                color: Palette.primaryTextColor,
                              ),
                              Text('Files', style: textStyle)
                            ],
                          )),
                    ],
                  ))),
                //This is the display picture
              Expanded(
                  flex: 3,
                  child: Container(
                      child: Center(
                          child: CircleAvatar(
                    radius: (80 - (width * .06)) / 2,
                    backgroundImage: Image.asset(
                      Assets.defaultUser,
                    ).image,
                  )))),
            ]))));
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
