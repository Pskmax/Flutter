import 'package:flutter/material.dart';

class NavBar1 extends StatelessWidget {
  const NavBar1({
    super.key,
    required this.appTheme,
  });

  final Map appTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appTheme['main'],
      child: Row(
        children: <Widget>[
          // ===== CAMERA =====
          Container(
              padding: const EdgeInsets.all(5),
              child: IconButton(
                icon: Icon(
                  Icons.camera_alt,
                  color: appTheme['bg'],
                  size: 35,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )),
          // ===== SEARCH BAR =====
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: appTheme['bg'],
                ))),
                child: Row(
                  children: [
                    SizedBox(),
                    Spacer(),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: Icon(
                        Icons.search,
                        color: appTheme['bg'],
                      ),
                    ),
                    Text("Search Gaming",
                        style: TextStyle(
                          color: appTheme['bg'],
                          fontSize: 16,
                        )),
                    Spacer(),
                    SizedBox()
                  ],
                )),
          ),
          // ===== MESSENGER =====
          Container(
            padding: const EdgeInsets.all(5),
            child: IconButton(
              icon: Icon(
                Icons.messenger,
                color: appTheme['bg'],
                size: 35,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
