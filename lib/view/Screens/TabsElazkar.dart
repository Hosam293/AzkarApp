import 'package:azkark/view/Widgets/AzanTime.dart';
import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabIndicator.dart';

import 'Azkark.dart';
import 'HomePage.dart';
class TabsElazkar extends StatefulWidget {
  const TabsElazkar({Key? key}) : super(key: key);

  @override
  State<TabsElazkar> createState() => _TabsElazkarState();
}

class _TabsElazkarState extends State<TabsElazkar> with SingleTickerProviderStateMixin  {
  final tabList = ['السبحة', 'الاذكار'];
  final tab=[HomePage()];
  late TabController _controller;
  @override
  void initState()  {
    super.initState();
    _controller=TabController(length: tabList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff967959),
          leading: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  builder: (BuildContext context) => Container(
                    color: Color(0xff967959).withOpacity(.5),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15.0,left: 15.0),
                      child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        // padding: EdgeInsets.only(right: 20.0),
                        shrinkWrap: true,
                        itemCount:8,
                        separatorBuilder:
                            (BuildContext context, int index) =>
                            Container(
                              width: double.infinity,
                              height: 1.0,
                              color: Colors.black,
                            ),
                        itemBuilder: (BuildContext context, int index) =>
                            AzanTime(),
                      ),
                    ),
                  ),
                  context: context
              );
            },
            child: Container(
              padding: EdgeInsetsDirectional.only(start: 10.0),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset('assets/images/مئذنة.jpg'),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(70.0))),
            ),
          ),
          title: Text(
            'السبحة',
            style: TextStyle(
              color: Color(0xff221c0f),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.info_outline_rounded,
                  size: 30, color: Color(0xff221c0f)),
              onPressed: () {
                showModalBottomSheet(
                    builder: (BuildContext context) => Container(
                      color: Color(0xff967959).withOpacity(.5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () => Navigator.pop(context),
                                  icon: Icon(Icons.backspace_outlined,
                                      size: 30, color: Color(0xff221c0f))),
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Text(
                                  'المساعدة',
                                  style: TextStyle(
                                    color: Color(0xff221c0f),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'نحن هنا للمساعدة',
                            style: TextStyle(
                              color: Color(0xff221c0f),
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            // textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    context: context);
              },
            )
          ],
          bottom:TabBar(
            controller: _controller,
            indicator: PointTabIndicator(
              position: PointTabIndicatorPosition.bottom,
              color: Color(0xff221c0f),
              insets: EdgeInsets.only(bottom: 6),

            ),
            tabs: tabList.map((item) => Tab(text:item)).toList(),

            labelStyle: TextStyle(
              color: Color(0xff221c0f),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),






          ),

        ),
        body: TabBarView(
          controller: _controller,
          children: [
            HomePage(),
            Azkark()
          ],


        )

    );
  }
}
