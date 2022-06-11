import 'dart:convert';
import 'dart:io';

import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:highlight/languages/xml.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _LearnState();
}

class _LearnState extends State<LearnPage> {
  final urlHead =
      '<!DOCTYPE html><html><head><meta name="viewport" content="width=device-width, initial-scale=1.0"></head><body>';
  final urlStyle =
      '<style> div border: 2px solid #a1a1a1; background: #2B2B2B; border-radius: 5px;</style>';
  final urlEnd = "</body>";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:
    Scaffold(
      appBar: PreferredSize(child: appBar(), 
      preferredSize:const Size(double.infinity,48)),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 48,
              color: Colors.white,
              child: InkWell(
                child: const Icon(
                  Icons.close,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 10, top: 10),
                child: const Text(
                  "欢迎到HTML！",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF2b2b2b),
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                )),
            Container(
              height: 200,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(
                  top: 10, left: 10, right: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Html stands for HyperText Markup Language",
                      style: TextStyle(fontSize: 14, color: Colors.black)),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Text(
                      "HTML的全称为超文本标记语言，是一种标记语言。它包括一系列标签．通过这些标签可以将网络上的文档格式统一，使分散的Internet资源连接为一个逻辑整体。HTML文本是由HTML命令组成的描述性文本，HTML命令可以说明文字，图形、动画、声音、表格、链接等",
                      style: TextStyle(
                          fontSize: 14, color: Colors.black, height: 1.6),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "下面是一个HTML实例:",
                  style: TextStyle(color: Color(0xFF353535), fontSize: 12),
                )),
            Container(
                height: 100,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: CodeField(controller: CodeController(
                  language:xml,
                  text: '<p>Hello World</p>',
                  theme: monokaiSublimeTheme,
                  ),)
                ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              alignment: Alignment.center,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.yellow[700],
                    ),
                    child: const Icon(
                      Icons.warning_amber_outlined,
                      size: 25,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6)),
                        color: Colors.yellow[100],
                      ),
                      child: const Text(
                          "超文本是一种组织信息的方式，它通过超级链接方法将文本中的文字、图表与其他信息媒体相关联。",
                          style: TextStyle(
                            color: Colors.black,
                          )),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
    );
  }

  @override
  void initState() {
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
    if (Platform.isWindows) WebView.platform = CupertinoWebView();
    super.initState();
  }
}

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
            "基础知识",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),
          ),
          Icon(Icons.save,
          color: Colors.white,
          )
        ],
      ),
    );
  }