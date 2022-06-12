import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hug/profile/index.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Container(
      color: Colors.grey,
      child: Column(
        children: [
           const UserInfoAreaWidget(),
          FunctionButton(icon: Icons.bar_chart, content: "学习进度", function:()=>{
          SmartDialog.showToast("学习进度")
          }),
          FunctionButton(icon: Icons.bar_chart, content: "学习进度", function:()=>{
            SmartDialog.showToast("学习进度")
          }),
          FunctionButton(icon: Icons.bar_chart, content: "证书", function:()=>{
            SmartDialog.showToast("学习进度")
          }),
          Container(
            color: Colors.white,
            alignment: Alignment.bottomCenter,
            margin:const  EdgeInsets.all(8),
            height: 100,
            child: GridView.count(crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 8,
              children: [
                ChildMenu("收藏"),
                ChildMenu("我的库"),
                ChildMenu("兑换中心"),
                ChildMenu("评论")
              ],
            ),
          ),
         const Spacer(),
         Container(
          margin: const EdgeInsets.only(bottom: 20),
          width: 200,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
              color: Colors.white,
          ),
          child: 
          Image.asset("assets/images/logo.png",
          fit: BoxFit.cover,
          )
         ),
        ],
      ),
    )
    );
  }
}



