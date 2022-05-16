import 'package:azkark/view/Widgets/DefAzkar.dart';
import 'package:flutter/material.dart';

import '../../services/Fun.dart';

class Elazkar extends StatefulWidget {
  const Elazkar({Key? key}) : super(key: key);

  @override
  State<Elazkar> createState() => _ElazkarState();
}

class _ElazkarState extends State<Elazkar> {
 int  counter = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbe4bd),
      appBar: AppBar(
        backgroundColor: Color(0xff967959),
        title: Text('الاذكار',
            style: TextStyle(
              color: Color(0xff221c0f),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, size: 25, color: Color(0xff221c0f)),
        //   onPressed: () {},
        // ),
      ),
      body: ListView.separated(separatorBuilder: (BuildContext context, int index) => SizedBox(
        height: 5.0,
      ),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) =>DefAzkar(text: 'قل هو الله احد قل هو الله احد قل هو الله احد'),


      )

    );
  }
}
