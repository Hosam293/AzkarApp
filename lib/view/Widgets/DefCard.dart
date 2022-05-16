import 'package:flutter/material.dart';

import '../Screens/Elazkar.dart';

class DefCard extends StatefulWidget {
String text;

DefCard({required this.text});

  @override
  State<DefCard> createState() => _DefCardState();
}

class _DefCardState extends State<DefCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)) ,
      color: Color(0xff967959),
      shadowColor: Color(0xff967959),
      elevation: 5.0,
      child: Center(
        child: MaterialButton(
          onPressed: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Elazkar()) );
          },
          minWidth: double.infinity,
          height: double.infinity,
          splashColor: Color(0xfffbe4bd),
          animationDuration: Duration(seconds: 3),
          child: Text(
            '${widget.text}',
            style: TextStyle(
              color: Color(0xff221c0f),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
