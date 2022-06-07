export 'community_widget.dart';
import 'package:flutter/material.dart';

class CodeCoach extends StatelessWidget {
  const CodeCoach({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      margin:const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 64,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      "代码教练",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Text(
                      "通过编写代码挑战自我",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  ],
                ),
              ),
              const Spacer(),
              const Text(
                "查看更多",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              fuctionIcon(Icons.map, "2位地图", "高"),
              fuctionIcon(Icons.map, "2位地图", "高"),
              fuctionIcon(Icons.map, "2位地图", "高"),
              fuctionIcon(Icons.map, "2位地图", "高"),
            ],
          )
        ],
      ),
    );
  }
}

Widget fuctionIcon(IconData icon, String title, String type) {
  var paint = Paint();
  paint.color = Colors.black87;
  return SizedBox(
    height: 130,
    width: 80,
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 80,
          ),
          Text(title),
          Text(
            type,
            style: TextStyle(background: paint),
          )
        ]),
  );
}
