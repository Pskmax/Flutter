import 'package:flutter/material.dart';

class AdsBox extends StatelessWidget {
  const AdsBox({
    super.key,
    required this.ads,
    required this.appTheme,
  });

  final List ads;
  final Map appTheme;

  @override
  Widget build(BuildContext context) {
    // ===== SINGLE ADS BOX =====
    return Container(
      width: 270,
      height: 230,
      padding: EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: Column(
        children: <Widget>[
          // ===== ADS THUMBNAIL =====
          Container(
            height: 140,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    ads[0],
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: appTheme['shadow'],
                  blurRadius: 5,
                  offset: Offset(4, 4),
                ),
              ],
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.topCenter,
              child: Row(
                children: <Widget>[
                  // ===== TAP TO PLAY FLOATING =====
                  Container(
                      padding: EdgeInsets.only(
                        left: 7,
                        right: 7,
                        top: 2,
                        bottom: 2,
                      ),
                      decoration: BoxDecoration(
                          color: appTheme['floating'],
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.videogame_asset,
                              color: appTheme['bg'],
                            ),
                            onPressed: () {},
                            iconSize: 20,
                            constraints:
                                BoxConstraints(maxWidth: 20, maxHeight: 20),
                            padding: EdgeInsets.zero,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Tap to Play",
                            style: TextStyle(
                              fontSize: 14,
                              color: appTheme['bg'],
                            ),
                          ),
                        ],
                      )),
                  Spacer(),
                  // ===== CANCEL FLOATING =====
                  IconButton(
                    icon: Icon(
                      Icons.cancel_rounded,
                      color: appTheme['floating'],
                    ),
                    onPressed: () {},
                    constraints: BoxConstraints(
                      maxHeight: 30,
                      maxWidth: 30,
                    ),
                    padding: EdgeInsets.zero,
                  )
                ],
              ),
            ),
          ),
          // ===== ADS DATA =====
          Container(
            height: 100,
            child: Container(
              decoration: BoxDecoration(
                color: appTheme['bg'],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: appTheme['shadow'],
                    blurRadius: 5,
                    offset: Offset(4, 4), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 15,
                  bottom: 15,
                ),
                child: Row(
                  children: <Widget>[
                    // ===== APP ICON =====
                    Container(
                      alignment: Alignment.topCenter,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Image.network(
                            ads[1],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(3),
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: <Widget>[
                            // ===== TITLE =====
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                ads[2],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            // ===== DESCRIPTION =====
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                ads[3],
                                style: TextStyle(
                                  fontSize: 13,
                                  color: appTheme['description'],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
