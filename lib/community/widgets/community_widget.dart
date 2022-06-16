import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hug/community/widgets/widgets.dart';

Widget communityWidget(){
    return const DefaultTabController(length: 2, child:
     Scaffold(
      appBar:CommunityAppBar(),
       body: TabBarView(
        children: [
        Icon(Icons.code),
        Icon(Icons.difference_outlined)
      ],
      ), 
      ),
    );
  }

class CommunityAppBar extends StatefulWidget implements PreferredSizeWidget{
  const CommunityAppBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState()=> _CommunityState();


  @override
  Size get preferredSize => const Size(double.infinity,48);

}

class _CommunityState extends State<CommunityAppBar>{
  @override
  Widget build(BuildContext context) {
   return Container(
        color: Colors.greenAccent,
        child:TabBar(
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
      );
    
  }

}

