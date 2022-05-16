import 'package:flutter/material.dart';

class DefAzkar extends StatefulWidget {
String text;

DefAzkar({required this.text});

  @override
  State<DefAzkar> createState() => _DefAzkarState();
}

class _DefAzkarState extends State<DefAzkar> {
  int counter = 6;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)),
        color: Color(0xff967959),
        shadowColor: Color(0xff967959),
        elevation: 5.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                '${widget.text}',
                style: TextStyle(
                  color: Color(0xff221c0f),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            MaterialButton(
              onPressed: (){
                setState(() {
                  if(counter >0){
                    counter--;
                  }
                });
              },
              minWidth: double.infinity,
              color: (counter == 0) ? Colors.green : Color(0xfffbe4bd),
              height: 50.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0))),
              child: Text('${counter}'),
            )
          ],
        ),
      ),
    );
  }
}
