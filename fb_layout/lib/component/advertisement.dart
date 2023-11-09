import 'package:fb_layout/component/single_component/ads_box.dart';
import 'package:fb_layout/mockupData/mockup.dart';
import 'package:flutter/material.dart';

class Advertisement extends StatelessWidget {
  const Advertisement({
    super.key,
    required this.appTheme,
  });

  final Map appTheme;

  @override
  Widget build(BuildContext context) {
    List<List> adsToDisplay = MockupData.adsToDisplay;

    return SizedBox(
      height: 315,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // ===== LINE BEFORE ADS =====
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Container(
              height: 0,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: appTheme['border']),
                ),
              ),
            ),
          ),
          // SizedBox(
          //   height: 5,
          // ),
          // ===== ADS TITLE =====
          Expanded(
            // height: 270,
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.dashboard_outlined,
                            color: appTheme['main'],
                          ),
                          onPressed: null,
                          constraints: BoxConstraints(
                            maxWidth: 35,
                            maxHeight: 35,
                          ),
                          iconSize: 35,
                          padding: EdgeInsets.zero,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Facebook Gaming",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: appTheme['titleText'],
                            ),
                          ),
                        ),
                      ],
                    )),
                // ===== ADS LIST VIEW =====
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 10),
                    children: <Widget>[
                      for (var key in adsToDisplay)
                        AdsBox(
                          ads: key,
                          appTheme: appTheme,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // ===== LINE AFTER ADS =====
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: appTheme['border'],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
