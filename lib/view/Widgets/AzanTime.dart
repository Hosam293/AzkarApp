import 'package:flutter/material.dart';

class AzanTime extends StatefulWidget {
  const AzanTime({Key? key}) : super(key: key);

  @override
  State<AzanTime> createState() => _AzanTimeState();
}

class _AzanTimeState extends State<AzanTime> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.backspace_outlined,
                  size: 30,
                  color: Color(0xff221c0f)
              )
          ),
          Text(
            'اوقات الاذان',
            style: TextStyle(
              color: Color(0xff221c0f),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    );
  }
}
