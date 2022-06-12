import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hug/community/widgets/widgets.dart';

Widget communityWidget(){
    return DefaultTabController(length: 2, child:
     Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        bottom:   TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.brown),
           indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 1,
            indicatorColor: Colors.red,
            tabs:const [
              Tab(
                text: "代码",
              ),
              Tab(
                text: "讨论",
              )
        ]),
      ),
      body: const TabBarView(
        children: [
        Icon(Icons.code),
        Icon(Icons.difference_outlined)
      ],
      ),
    ),
    );
  }



