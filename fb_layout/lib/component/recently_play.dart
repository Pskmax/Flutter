import 'package:fb_layout/component/single_component/recently_play_box.dart';
import 'package:fb_layout/mockupData/mockup.dart';
import 'package:flutter/material.dart';

class RecentlyPlay extends StatelessWidget {
  const RecentlyPlay({
    super.key,
    required this.appTheme,
  });

  final Map appTheme;

  @override
  Widget build(BuildContext context) {
    List<List> gameToDisplay = MockupData.gameToDisplay;
    return Container(
      height: 180,
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              top: 10,
              left: 15,
              right: 15,
            ),
            // ===== RECENTLY PLAY TITLE =====
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recently Play",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: appTheme['title'],
                  ),
                ),
                Text("See All",
                    style: TextStyle(color: appTheme['main'], fontSize: 16)),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          // ===== RECENTLY PLAY LIST VIEW =====
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                for (List game in gameToDisplay)
                  RecentlyPlayBox(
                    game: game,
                    appTheme: appTheme,
                  ),
              ],
            ),
          ),
          Container(
            height: 15,
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: appTheme['border'],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
