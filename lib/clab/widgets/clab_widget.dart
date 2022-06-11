import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:code_text_field/code_text_field.dart';
import 'package:highlight/languages/dart.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';


//顶部栏
  Widget appBar() {
    return Container(
      height: 48,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(bottom: 10),
      color: Colors.deepOrange,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(
            Icons.menu,
            color: Colors.white,
            size: 24,
          ),
          SizedBox(width: 10,),
          Text(
            "代码天堂",
            style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),
          ),
          Icon(Icons.save,
          color: Colors.white,
          )
        ],
      ),
    );
  }