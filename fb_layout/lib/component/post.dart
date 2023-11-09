import 'package:fb_layout/component/single_component/post_body.dart';
import 'package:fb_layout/component/single_component/post_footer.dart';
import 'package:fb_layout/component/single_component/post_header.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
    required this.appTheme,
    required this.post,
  });

  final Map appTheme;
  final Map post;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PostHeader(
          post: post['header'],
          appTheme: appTheme,
        ),
        PostBody(
          appTheme: appTheme,
          post: post['body'],
        ),
        PostFooter(
          appTheme: appTheme,
          post: post['body'],
        ),
        Container(
          height: 15,
          color: appTheme['border'],
        ),
      ],
    );
  }
}
