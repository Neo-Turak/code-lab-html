
import 'package:flutter/material.dart';
import 'package:hug/main/index.dart';

export 'domain/cherry_domain.dart';
export 'providers/providers.dart';
export 'screens/screens.dart';
export 'widgets/widgets.dart';

class CherryPickPage extends StatefulWidget {
  const CherryPickPage({Key? key}) : super(key: key);

  @override
  State<CherryPickPage> createState() => _CherryPickPageState();
}

class _CherryPickPageState extends State<CherryPickPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
    type:MaterialType.transparency,
    child:
     Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text("Fill in the blanks to add a title to the html page",style: TextStyle(color: Colors.black,fontSize: 14,),),
          Text("<html>",style: TextStyle(color: Colors.black,fontSize: 14)),
          Text("  <Head>",style: TextStyle(color: Colors.black,fontSize: 14)),
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                  SizedBox(width: 40, child: TextField()),
             Text("MyBlog"),
            SizedBox(width: 50,child: TextField()), 
              ],
            ),
          ),
         Text("</html>",style: TextStyle(color: Colors.black,fontSize: 14)),
        ],
      ),
    )

      );
  }
}