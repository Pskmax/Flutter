import 'package:flutter/material.dart';

class PostFooter extends StatelessWidget {
  const PostFooter({
    super.key,
    required this.appTheme,
    required this.post,
  });
  final Map appTheme;
  final List post;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 15,
        right: 15,
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // ===== LIKE AND EMOJI NUMBER =====
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.thumb_up_alt,
                      color: appTheme['icon'],
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    constraints: BoxConstraints(
                      maxHeight: 20,
                      maxWidth: 20,
                    ),
                    padding: EdgeInsets.zero,
                    iconSize: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "1.2K",
                    style: TextStyle(
                      color: appTheme['description'],
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              // ===== COMMENTS NUMBER =====
              Row(
                children: <Widget>[
                  Text(
                    "786 Comments",
                    style: TextStyle(
                      color: appTheme['description'],
                      fontSize: 14,
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            height: 0,
            margin: EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: appTheme['border']),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // ===== LIKE BUTTON =====
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.thumb_up_alt_outlined,
                      color: appTheme['icon'],
                    ),
                    onPressed: null,
                    constraints: BoxConstraints(
                      maxHeight: 25,
                      maxWidth: 25,
                    ),
                    padding: EdgeInsets.zero,
                    iconSize: 25,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Like',
                    style: TextStyle(
                      color: appTheme['description'],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              // ===== COMMENT BUTTON =====
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.message_outlined,
                      color: appTheme['icon'],
                    ),
                    onPressed: null,
                    constraints: BoxConstraints(
                      maxHeight: 25,
                      maxWidth: 25,
                    ),
                    padding: EdgeInsets.zero,
                    iconSize: 25,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Comment',
                    style: TextStyle(
                      color: appTheme['description'],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              // ===== SHARE BUTTON =====
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.share,
                      color: appTheme['icon'],
                    ),
                    onPressed: null,
                    constraints: BoxConstraints(
                      maxHeight: 25,
                      maxWidth: 25,
                    ),
                    padding: EdgeInsets.zero,
                    iconSize: 25,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Share',
                    style: TextStyle(
                      color: appTheme['description'],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
