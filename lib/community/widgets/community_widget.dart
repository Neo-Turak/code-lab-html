import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hug/community/widgets/widgets.dart';

class CommunityWidget extends StatelessWidget {
  const CommunityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      padding:const EdgeInsets.symmetric(horizontal: 4),
      child: SingleChildScrollView(child: 
      Column(
        children: const [
         CodeCoach(),

        ],
      )
      ,)
    );
  }
}


