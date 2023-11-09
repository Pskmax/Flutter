import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    super.key,
    required this.post,
    required this.appTheme,
  });

  final List post;
  final Map appTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 15,
        left: 15,
        right: 15,
      ),
      child: SizedBox(
        height: 70,
        child: Row(
          children: <Widget>[
            // ===== PROFILE ICON =====
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(post[0]),
              ),
            ),
            Expanded(
              // ===== USERNAME AND STATUS =====
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: 5,
                      children: [
                        Text(
                          post[1],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: appTheme['title'],
                          ),
                        ),
                        Text(
                          'is live now',
                          style: TextStyle(
                            fontSize: 16,
                            color: appTheme['title'],
                          ),
                        ),
                        Text(
                          '-',
                          style: TextStyle(
                            fontSize: 16,
                            color: appTheme['title'],
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.videogame_asset,
                            size: 19,
                            color: appTheme['title'],
                          ),
                          onPressed: () {},
                          padding: EdgeInsets.all(0),
                          constraints: BoxConstraints(
                            maxHeight: 19,
                          ),
                        ),
                        Text(
                          'playing',
                          style: TextStyle(
                            fontSize: 16,
                            color: appTheme['title'],
                          ),
                        ),
                        Text(
                          post[2],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: appTheme['title'],
                          ),
                        ),
                      ],
                    ),
                    Wrap(
                      spacing: 5,
                      children: [
                        Text(
                          post[3],
                          style: TextStyle(
                            fontSize: 14,
                            color: appTheme['description'],
                          ),
                        ),
                        Text(
                          '·',
                          style: TextStyle(
                            fontSize: 16,
                            color: appTheme['description'],
                          ),
                        ),
                        IconButton(
                          padding: EdgeInsets.all(0),
                          icon: Icon(
                            Icons.public,
                            size: 15,
                            color: appTheme['icon'],
                          ),
                          onPressed: null,
                          constraints: BoxConstraints(
                            maxHeight: 20,
                            maxWidth: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // ===== MORE OPTION =====
            IconButton(
              icon: Icon(
                Icons.more_horiz,
                size: 22,
                color: appTheme['icon'],
              ),
              onPressed: () {},
              padding: EdgeInsets.all(0),
              constraints: BoxConstraints(
                maxHeight: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
