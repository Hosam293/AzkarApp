import 'package:flutter/material.dart';
class DefMatBut extends StatefulWidget {
  String text;
  VoidCallback onPressed;

  DefMatBut({required this.text, required this.onPressed});




  @override
  State<DefMatBut> createState() => _DefMatButState();
}

class _DefMatButState extends State<DefMatBut> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(

      onPressed: widget.onPressed,
      color: Color(0xff967959),
      child: Text(
        '${widget.text}',
        style: TextStyle(
          color: Color(0xff221c0f),
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),

      ),
      height: 50.0,
      splashColor: Color(0xfffbe4bd),
      animationDuration: Duration(seconds: 3),


    );
    
  }
}
