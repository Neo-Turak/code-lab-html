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
          FunctionButton(icon: Icons.bar_chart, content: "学习进度", function:()=>{
            SmartDialog.showToast("学习进度")
          }),
        ],
      ),
    )
    );
  }
}



