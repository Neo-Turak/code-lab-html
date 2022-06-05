import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hug/learn_page.dart';
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
        primaryColor: Colors.black54,
        colorScheme:const ColorScheme.dark()
      ),
    ),
  );
}

class MyScaffold extends StatefulWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState()=>_MyScaffoldState();

}
class _MyScaffoldState extends State<MyScaffold> {
  final TextStyle mStyle = const TextStyle(color: Colors.white);
  final f = DateFormat("yyyy-MM-dd HH:mm:ss");
  var strNow = "";
 late final Timer timer;

 //顶部栏
  Widget appBar() {
    return Container(
      height: 48,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(bottom: 10),
      color: Colors.cyan[300],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Icon(
            Icons.menu,
            color: Colors.white,
            size: 24,
          ),
          SizedBox(width: 10,),
          Text(
            "HTML 基础知识",
            style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  //日历
  Widget calendar() {
    return Container(
      height: 150,
      clipBehavior: Clip.antiAlias,
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),

      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        boxShadow: [
          BoxShadow(
           offset: Offset.fromDirection(10),color: Colors.amber,
          )
        ],
        color: const Color(0xCC2b2b2b),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "26",
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "朝阳区",
                    style: mStyle,
                  ),
                  Text(
                    strNow,
                    style: mStyle,
                  )
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.cloud,
                size: 48,
                color: Colors.white,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("周一", style: mStyle),
              Text("周二", style: mStyle),
              Text("周三", style: mStyle),
              Text("周四", style: mStyle),
              Text("周五", style: mStyle),
              Text("周六", style: mStyle),
              Text("周日", style: mStyle),
            ],
          )
        ],
      ),
    );
  }

  //概述
  Widget provideOverview(){
    return  Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 80,
          height: 80,
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          decoration:  BoxDecoration(
              color: Colors.green,
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0.0,0.0),
                  color: Colors.black,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                )
              ],
              borderRadius: BorderRadius.circular(40)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const [
              Text("</>",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.white),),
              Text("HTML",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
        const SizedBox(height: 10,),
        const Text("概述",style: TextStyle(fontSize: 16,color: Colors.grey),)
      ],
    );
  }

  //基础知识
  Widget provideBasics(){
    return  Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       InkWell(child: Container(
          width: 80,
          height: 80,
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          decoration:  BoxDecoration(
              color: Colors.cyan,
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0.0,0.0),
                  color: Colors.black,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                )
              ],
              borderRadius: BorderRadius.circular(40)
          ),
          child: const Icon(
            Icons.construction,
            size: 48,
          ),
        ),onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>const LearnPage()));
       },
       ),
        const SizedBox(height: 10,),
        const Text("HTML 基础",style: TextStyle(fontSize: 16,color: Colors.black),),
       const SizedBox(height: 10,),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children:const [
           Text("3/10",style: TextStyle(color: Colors.black,fontSize: 10),),
            SizedBox(width: 10,),
            SizedBox(width: 80,
                height: 2.0,
                child: LinearProgressIndicator(backgroundColor: Colors.grey,value: 0.3,valueColor: AlwaysStoppedAnimation(Colors.cyan),)),
         ],
       )
      ],
    );
  }

  //挑战
  Widget provideChallenge(){
    return  Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 80,
          height: 80,
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          decoration:  BoxDecoration(
              color: Colors.blue[400],
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0.0,0.0),
                  color: Colors.black,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                )
              ],
              borderRadius: BorderRadius.circular(40)
          ),
          child: Icon(Icons.card_giftcard,size: 48,color: Colors.grey[700],),
        ),
        const SizedBox(height: 10,),
         Text("挑战",style: TextStyle(fontSize: 16,color: Colors.grey[700]),)
      ],
    );
  }

  //Html 5
  Widget provideHtml5(){
    return  Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 80,
          height: 80,
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          decoration:  BoxDecoration(
              color: Colors.grey,
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0.0,0.0),
                  color: Colors.black,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                )
              ],
              borderRadius: BorderRadius.circular(40)
          ),
          child: const Icon(
            Icons.add_chart_rounded,
            size: 48,
          ),
        ),
        const SizedBox(height: 10,),
        const Text("HTML5",style: TextStyle(fontSize: 16,color: Colors.black),),
        const  Text("3/10",style: TextStyle(color: Colors.black,fontSize: 10),)
      ],
    );
  }

  //成就
  Widget provideReward(){
    return  Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 80,
          height: 80,
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          decoration:  BoxDecoration(
              color: Colors.grey,
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0.0,0.0),
                  color: Colors.black,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                )
              ],
              borderRadius: BorderRadius.circular(40)
          ),
          child: const Icon(
            Icons.account_balance_outlined,
            size: 48,
          ),
        ),
        const SizedBox(height: 10,),
        const Text("成就",style: TextStyle(fontSize: 16,color: Colors.black),),
      ],
    );
  }

  Widget provideStudy(){
    return Container(
      width: 130,
      height: 40,
      alignment: Alignment.center,
      decoration:  BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(6),
          boxShadow:const [
            BoxShadow(
                offset: Offset(1,1),
                color: Color(0xffccddcc),
                blurRadius: 2
            )
          ]
      ),
      child: const Text("继续学习",),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black,
      statusBarColor: Colors.cyan[700]
    ));
    return Scaffold(
      appBar: PreferredSize(preferredSize:const Size(double.infinity,64),
      child: appBar()),
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
       child: Container(
        padding:const  EdgeInsets.all(10),
         height: MediaQuery.of(context).size.height,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              provideOverview(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                provideBasics(),
                provideChallenge(),
              ],
            ),
              provideStudy(),
              provideHtml5(),
              provideReward(),
    ]),
      )
      )
    );
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        DateTime now = DateTime.now();
        strNow = f.format(now);
      });

    });
    timer.tick;
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}


