import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookStoreScr extends StatelessWidget {
  const BookStoreScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Theme.of(context).colorScheme.primary,
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: <Widget>[
      //       Text(
      //         "meb",
      //         style: TextStyle(
      //           fontSize: 35,
      //           fontWeight: FontWeight.w400,
      //           color: Theme.of(context).colorScheme.onPrimary,
      //         ),
      //       ),
      //       IconButton(
      //         onPressed: () {},
      //         icon: Icon(
      //           Icons.more_vert,
      //           color: Theme.of(context).colorScheme.onPrimary,
      //         ),
      //         padding: EdgeInsets.zero,
      //       )
      //     ],
      //   ),
      // ),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: Colors.green,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "ร้านหนังสือ",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.zero,
                    ),
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ],
                )
              ],
            ),
            floating: true,
            expandedHeight: 50,
            // pinned: true,
            // snap: true,
            // stretch: true,
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: PersistentHeader(
                widget: ListView(
              scrollDirection: Axis.horizontal,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                for (var tab in [
                  'ทั้งหมด',
                  'นิยาย',
                  'การ์ตูน',
                  'ทั่วไป',
                  'หนังสือเสียง',
                  'เรียน',
                  'บุฟเฟต์'
                ])
                  Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      tab,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            )),
          ),
          // 100 list tile items; scrollable
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: index % 2 == 0 ? Colors.white : Colors.grey,
                  child: Text('list item $index'),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}

class PersistentHeader extends SliverPersistentHeaderDelegate {
  final Widget widget;

  PersistentHeader({required this.widget});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      width: double.infinity,
      height: 40.0,
      child: Container(
        margin: EdgeInsets.all(0),
        color: Colors.white,
        child: Center(child: widget),
      ),
    );
  }

  @override
  double get maxExtent => 40.0;

  @override
  double get minExtent => 40.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
