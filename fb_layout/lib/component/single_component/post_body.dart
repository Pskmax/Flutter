import 'package:flutter/material.dart';

class PostBody extends StatelessWidget {
  const PostBody({
    super.key,
    required this.appTheme,
    required this.post,
  });

  final Map appTheme;
  final List post;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ===== POST DESCRIPTION =====
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(15),
          child: Text(
            post[0],
            style: TextStyle(
              fontSize: 16,
              color: appTheme['title'],
            ),
          ),
        ),
        // ===== POST THUMBNAIL =====
        Container(
          height: 220,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                post[1],
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    height: 25,
                    color: appTheme['live1'],
                    alignment: Alignment.center,
                    child: Text(
                      "LIVE",
                      style: TextStyle(
                        color: appTheme['bg'],
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    height: 25,
                    color: appTheme['live2'],
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: appTheme['bg'],
                          ),
                          iconSize: 20,
                          constraints: BoxConstraints(
                            maxWidth: 20,
                            maxHeight: 20,
                          ),
                          padding: EdgeInsets.all(0),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          post[5],
                          style: TextStyle(
                            color: appTheme['bg'],
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          color: appTheme['bg2'],
          padding: EdgeInsets.all(15),
          height: 90,
          child: Row(
            children: <Widget>[
              // ===== GAME ICON =====
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: SizedBox(
                    width: 40,
                    child: Image.network(
                      post[2],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // ===== GAME NAME =====
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                    left: 15,
                    right: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        post[3],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: appTheme['title'],
                        ),
                      ),
                      Text(
                        post[4],
                        style: TextStyle(
                          fontSize: 16,
                          color: appTheme['description'],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // ===== FOLLOW BUTTON =====
              SizedBox(
                height: 30,
                child: TextButton(
                  onPressed: null,
                  child: Text(
                    "FOLLOW",
                    style: TextStyle(
                      color: appTheme['description'],
                      fontSize: 14,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                      side: BorderSide(
                        color: appTheme['description'],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
