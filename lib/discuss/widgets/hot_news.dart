import 'package:banner_image/banner_image.dart';
import 'package:flutter/material.dart';
import 'package:hug/consts.dart';


class HotNewsPage extends StatefulWidget {
  const HotNewsPage({Key? key}) : super(key: key);

  @override
  State<HotNewsPage> createState() => _HotNewsPageState();
}

class _HotNewsPageState extends State<HotNewsPage> {
  final newsList = <String>[
    "一图读懂｜6月1日起，湖南婚姻登记实行“",
    "图解：广东省民政厅关于做好建设经营性公墓",
    "福建友帮应急救援集团 福州分公司举行成立",
    "全文|新修订的《地名管理条例》",
    "广东省民政厅关于做好建设经营性公墓审批",
    "广东省民政厅关于做好建设经营性公墓审批改",
    "政讯通·龙岩联合调研中心举行成立仪式",
    "解读《关于完善困难残疾人生活补贴和重度残》",
    "关于《民政部　国家乡村振兴局关于动员引导》",
    "信访工作条例",
    "重庆市民政局关于《进一步加强局管社会组织",
    "湖南省民政厅2021年度“谁执法谁普法”",
    "重庆市民政局关于规范和加强社会工作督导",
    "重庆市养老服务体系建设“十四五”规划",
    "广东省最低生活保障边缘家庭和支出型困难",
    "广东省人民政府办公厅关于印发广东省最低生",
    "一图读懂广东省最低生活保障边缘家庭和支出",
    "图解：广东省民政厅关于异地商会登记的管理",
    "点点达洗车提高生活质量，让生活变的更简单",
    "广东省民政厅关于修订印发异地商会登记管理",
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        BannerImage(
          itemLength: banners.length,
          imageUrlList: banners,
          autoPlay: true,
          selectedIndicatorColor: Colors.redAccent,
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          fit: BoxFit.cover,
          onTap: (p) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("当前位置:$p")));
          },
          children: 
            banners.map((item)=>
              BannerItem(url: item, title: item)
            ).toList()
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return HotNewsItem(
                title: newsList[index],
              );
            },
            itemCount: newsList.length,
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                height: 1.0,
                color: Colors.black26,
              );
            },
          ),
        )
      ],
    );
  }
}

class BannerItem extends StatelessWidget {
  const BannerItem({Key? key, required this.url, required this.title})
      : super(key: key);
  final String url;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.network(
          url,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 12.0,
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
        )
      ],
    );
  }
}

class HotNewsItem extends StatelessWidget {
  const HotNewsItem({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      height: 48,
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                    textBaseline: TextBaseline.alphabetic,
                    color: Color.fromARGB(255, 35, 35, 35),
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.ellipsis),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "2022-05-17 17:21",
              style: TextStyle(fontSize: 12.0, color: Colors.grey[500]),
            )
          ],
        ),
        onTap: () {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(title)));
        },
      ),
    );
  }
}
