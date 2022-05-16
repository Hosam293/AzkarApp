import 'package:flutter/material.dart';

import '../Widgets/DefCard.dart';

class Azkark extends StatefulWidget {
  const Azkark({Key? key}) : super(key: key);

  @override
  State<Azkark> createState() => _AzkarkState();
}

class _AzkarkState extends State<Azkark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbe4bd),
      // appBar: AppBar(
      // backgroundColor: Color(0xff967959),
      // title: Text('الاذكار',
      // style: TextStyle(
      // color: Color(0xff221c0f),
      // fontSize: 25,
      // fontWeight: FontWeight.bold,
      // )),
      // centerTitle: true,
      // leading: IconButton(
      //   icon: Icon(Icons.arrow_back,
      //       size: 25,
      //       color: Color(0xff221c0f)
      //   ),
      //   onPressed: (){},
      // ),
      // ),
      body: GridView.count(crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 5.0,
        padding: EdgeInsetsDirectional.all(15.0),
        children: [
          DefCard(text: 'أذكار الصباح',),
          DefCard(text: 'أذكار المساء',),
          DefCard(text: 'أذكار ما بعد الأذان',),

        ],

      ),

    );
  }
}
