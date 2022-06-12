export 'profile_widget.dart';
import 'package:flutter/material.dart';

//用户头部信息区域
class UserInfoAreaWidget extends StatefulWidget {
  const UserInfoAreaWidget({Key? key}) : super(key: key);

  @override
  State<UserInfoAreaWidget> createState() => _UserInfoAreaWidgetState();
}

class _UserInfoAreaWidgetState extends State<UserInfoAreaWidget> {
  @override
  Widget build(BuildContext context) {
    return   Container(
        height: 130,
        padding: const EdgeInsets.only(top: 20),
        width: double.infinity,
        color:const Color(0xFF2B2B2B),
        child:  CustomPaint(
          painter: Sky(),
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[350],
                        child:const Icon(Icons.account_circle,color: Colors.deepPurpleAccent,size: 80,),
                      ),
                    ),
                    Container(
                      margin:const EdgeInsets.only(left: 20),
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("努尔艾合麦提 图热克",style: TextStyle(color: Colors.white,fontSize: 16),),
                          Text("1 Following 5 Followers",style: TextStyle(color: Colors.white,fontSize: 14)),
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.star,color: Colors.yellow,size: 20,),
                              SizedBox(width: 10,),
                              Text("3169XP",style: TextStyle(color: Colors.white,fontSize: 14)),
                            ],
                          ),
                          Text("北京 朝阳区",style: TextStyle(color: Colors.white,fontSize: 14))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }

}

class Sky extends CustomPainter {
  final Paint _paint = Paint()
    ..color =const Color(0xFF2B2B2B) //画笔颜色
    ..strokeCap = StrokeCap.butt //画笔笔触类型
    ..isAntiAlias = true //是否启动抗锯齿
  // ..blendMode = BlendMode.exclusion //颜色混合模式
    ..style = PaintingStyle.fill //绘画风格，默认为填充
  // ..colorFilter = ColorFilter.mode(Colors.redAccent,
  //     BlendMode.exclusion) //颜色渲染模式，一般是矩阵效果来改变的,但是flutter中只能使用颜色混合模式
  // ..maskFilter = MaskFilter.blur(BlurStyle.inner, 3.0) //模糊遮罩效果，flutter中只有这个
    ..filterQuality = FilterQuality.high //颜色渲染模式的质量
    ..strokeWidth = 1.0; //



  @override
  void paint(Canvas canvas, Size size) {

    // Path path = new Path();
    // path.moveTo(0, 0);
    // path.lineTo(100, 100);
    // path.lineTo(200, 200);
    // path.lineTo(0, 0);
    // path.close();
    // canvas.drawPath(path, _paint);
    // canvas.drawCircle(Offset(100, 100), 50, _paint);
    // canvas.drawLine(const Offset(20.0, 20.0), const Offset(100.0, 100.0), _paint);
    const PI = 3.1415926;
    // Rect rect2 = Rect.fromCircle(center: Offset(100.0, 50.0), radius: 200.0);
    // canvas.drawArc(rect2, -PI, PI, false, _paint,);

    // Rect rect1 = Rect.fromPoints(Offset(150.0, 200.0), Offset(300.0, 250.0));
    // canvas.drawOval(rect1, _paint);

    var startPoint = Offset(0, size.height);// 开始位置
    var controlPoint1 = Offset(size.width / 4, size.height / 3 * 4); //控制点
    var controlPoint2 = Offset(3 * size.width / 4, size.height / 3 * 4);//控制点
    var endPoint = Offset(size.width, size.height);//结束位置

    var path = Path();
    path.moveTo(startPoint.dx, startPoint.dy);
    path.cubicTo(controlPoint1.dx, controlPoint1.dy,
        controlPoint2.dx, controlPoint2.dy,
        endPoint.dx, endPoint.dy);

    canvas.drawPath(path, _paint);

  }
  @override
  bool shouldRepaint(Sky oldDelegate) => false;
  @override
  bool shouldRebuildSemantics(Sky oldDelegate) => false;
}

class FunctionButton extends StatelessWidget {
  const FunctionButton({Key? key, required this.icon, required this.content, required this.function}) : super(key: key);
  final IconData icon;
  final String content;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child:Container(
      height: 60,
      color: Colors.white,
      margin:const EdgeInsets.only(top: 1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon,size:48 ,color: Colors.green,),
          Text(content,style: const TextStyle(color: Colors.black),),
          const Spacer(),
          const Icon(Icons.chevron_right,color: Colors.black,size: 32,)
        ],
      ),
    ),
      onTap: (){
      function;
      },
    );
  }
}

Widget ChildMenu(String name){
  return Container(
    height: 40,
    alignment: Alignment.center,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        color: Colors.blue
      ),
      child: Text(name,style:const  TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w900),)
  
  );
}

