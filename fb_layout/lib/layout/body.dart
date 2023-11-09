import 'package:fb_layout/component/categoriesBar.dart';
import 'package:fb_layout/component/advertisement.dart';
import 'package:fb_layout/component/post.dart';
import 'package:fb_layout/component/recently_play.dart';
import 'package:fb_layout/mockupData/mockup.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.appTheme,
  });

  final Map appTheme;

  @override
  Widget build(BuildContext context) {
    List<Map<String, List>> posts = MockupData.posts;
    return Column(
      children: [
        // ===== CATEGORIES BAR =====
        CategoriesBar(
          appTheme: appTheme,
        ),
        // ===== FACEBOOK GAMING ADVERTISEMENT =====
        Advertisement(
          appTheme: appTheme,
        ),
        // ===== RECENTLY PLAY =====
        RecentlyPlay(
          appTheme: appTheme,
        ),
        // ===== POSTS =====
        for (var post in posts)
          Post(
            appTheme: appTheme,
            post: post,
          ),
      ],
    );
  }
}
