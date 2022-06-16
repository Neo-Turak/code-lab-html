import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hug/discuss/widgets/hot_news.dart';
import 'package:hug/discuss/widgets/widgets.dart';

class DiscussWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar:DiscussAppBar(),
        body: TabBarView(children: [
           HotNewsPage(),
          Icon(Icons.access_alarm),
          Icon(Icons.access_alarms),
          Icon(Icons.access_time),
          Icon(Icons.accessibility),
          Icon(Icons.account_box),
          Icon(Icons.security)
        ]),
      ),
    );
  }
}
