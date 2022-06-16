import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
export 'discuss_widget.dart';

class DiscussAppBar extends StatefulWidget implements PreferredSizeWidget{
  const DiscussAppBar({Key? key}) : super(key: key);
 
  @override
  State<StatefulWidget> createState() => _DisucssAppBarState();

  @override
  Size get preferredSize =>const Size(double.infinity,48.0);

}

 class _DisucssAppBarState extends State<DiscussAppBar>{
  @override
  Widget build(BuildContext context) {
   return Container(
          color: Colors.white, 
          child: const TabBar(
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            labelColor: Colors.deepOrangeAccent,
            unselectedLabelColor: Color.fromARGB(255, 35, 35, 35),
            indicatorColor: Colors.red,
            indicatorWeight: 3,
            tabs: [
              Tab(
                text: "全部",
              ),
              Tab(
                text: "架构",
              ),
              Tab(
                text: "前端",
              ),
              Tab(
                text: "编程语言",
              ),
              Tab(
                text: "云计算",
              ),
              Tab(
                text: "AI",
              ),
              Tab(
                text: "开源",
              ),
            ],
          ),
        )
    ;
  }

 }