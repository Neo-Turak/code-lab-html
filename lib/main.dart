import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hug/community/index.dart';
import 'package:hug/discuss/index.dart';
import 'package:hug/learn_page.dart';
import 'package:hug/main/index.dart';
import 'package:hug/profile/index.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: const SafeArea(
        child: MyScaffold(),
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.black54, colorScheme: const ColorScheme.dark()),
    ),
  );
}

class MyScaffold extends StatefulWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold>
    with SingleTickerProviderStateMixin {
  var tabChild = [
    const MainPage(),
    const CommunityPage(),
    const DiscussPage(),
    const ProfilePage()
  ];

  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.black,
        statusBarColor: Colors.cyan[700]));
    return MaterialApp(
        home: Scaffold(
            body: TabBarView(
              controller: controller,
              children: tabChild,
            ),
            bottomNavigationBar: Material(
              color: Colors.white,
              child: TabBar(
                  controller: controller,
                  labelColor: Colors.deepPurpleAccent,
                  unselectedLabelColor: Colors.black26,
                  tabs: const [
                    Tab(
                      text: "学习",
                      icon: Icon(Icons.brightness_5),
                    ),
                    Tab(
                      text: "社区",
                      icon: Icon(Icons.map),
                    ),
                    Tab(
                      text: "讨论",
                      icon: Icon(Icons.directions_run),
                    ),
                    Tab(
                      text: "我的",
                      icon: Icon(Icons.portrait),
                    ),
                  ]),
            )));
  }
}
