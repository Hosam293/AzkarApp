import 'package:azkark/view/Widgets/DefMatBut.dart';
import 'package:flutter/material.dart';

import '../../services/Apis.dart';
import '../../services/Fun.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbe4bd),
      // appBar: AppBar(
      //   backgroundColor: Color(0xff967959),
      //   leading: GestureDetector(
      //     onTap: (){
      //       showModalBottomSheet( builder: (BuildContext context) => Container(
      //         color: Color(0xff967959).withOpacity(.5),
      //         child: Padding(
      //           padding: const EdgeInsets.only(right: 15.0,left: 15.0),
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //               ListView.separated(
      //                 shrinkWrap: true,
      //                   itemCount: 7,
      //                 separatorBuilder: (BuildContext context, int index) =>Container(
      //                     width: double.infinity,
      //                     height: 1.0,
      //                     color: Colors.black,
      //                   ),
      //                 itemBuilder: (BuildContext context, int index) => defualtRow(),
      //               ),
      //               // Row(
      //               //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               //   children: [
      //               //     IconButton(onPressed: ()=>Navigator.pop(context),
      //               //         icon: Icon(Icons.backspace_outlined,
      //               //             size: 30,
      //               //             color: Color(0xff221c0f)
      //               //         )
      //               //     ),
      //               //     Text(
      //               //       'اوقات الاذان',
      //               //       style: TextStyle(
      //               //         color: Color(0xff221c0f),
      //               //         fontSize: 25,
      //               //         fontWeight: FontWeight.bold,
      //               //       ),
      //               //     ),
      //               //   ],
      //               // ),
      //               // Container(
      //               //   width: double.infinity,
      //               //   height: 1.0,
      //               //   color: Colors.black,
      //               // ),
      //               // Row(
      //               //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               //   children: [
      //               //     Text(
      //               //         '4.00am',
      //               //       style: TextStyle(
      //               //         color: Color(0xff221c0f),
      //               //         fontSize: 25,
      //               //         fontWeight: FontWeight.bold,
      //               //       ),
      //               //     ),
      //               //     Text(
      //               //       'الفجر',
      //               //       style: TextStyle(
      //               //         color: Color(0xff221c0f),
      //               //         fontSize: 25,
      //               //         fontWeight: FontWeight.bold,
      //               //       ),
      //               //     ),
      //               //   ],
      //               // ),
      //               // Container(
      //               //   width: double.infinity,
      //               //   height: 1.0,
      //               //   color: Colors.black,
      //               // ),
      //               // Row(
      //               //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               //   children: [
      //               //     Text(
      //               //       '4.00am',
      //               //       style: TextStyle(
      //               //         color: Color(0xff221c0f),
      //               //         fontSize: 25,
      //               //         fontWeight: FontWeight.bold,
      //               //       ),
      //               //     ),
      //               //     Text(
      //               //       'الفجر',
      //               //       style: TextStyle(
      //               //         color: Color(0xff221c0f),
      //               //         fontSize: 25,
      //               //         fontWeight: FontWeight.bold,
      //               //       ),
      //               //     ),
      //               //   ],
      //               // ),
      //               // Container(
      //               //   width: double.infinity,
      //               //   height: 1.0,
      //               //   color: Colors.black,
      //               // ),
      //               // Row(
      //               //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               //   children: [
      //               //     Text(
      //               //       '4.00am',
      //               //       style: TextStyle(
      //               //         color: Color(0xff221c0f),
      //               //         fontSize: 25,
      //               //         fontWeight: FontWeight.bold,
      //               //       ),
      //               //     ),
      //               //     Text(
      //               //       'الفجر',
      //               //       style: TextStyle(
      //               //         color: Color(0xff221c0f),
      //               //         fontSize: 25,
      //               //         fontWeight: FontWeight.bold,
      //               //       ),
      //               //     ),
      //               //   ],
      //               // ),
      //               // Container(
      //               //   width: double.infinity,
      //               //   height: 1.0,
      //               //   color: Colors.black,
      //               // ),
      //               // Row(
      //               //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               //   children: [
      //               //     Text(
      //               //       '4.00am',
      //               //       style: TextStyle(
      //               //         color: Color(0xff221c0f),
      //               //         fontSize: 25,
      //               //         fontWeight: FontWeight.bold,
      //               //       ),
      //               //     ),
      //               //     Text(
      //               //       'الفجر',
      //               //       style: TextStyle(
      //               //         color: Color(0xff221c0f),
      //               //         fontSize: 25,
      //               //         fontWeight: FontWeight.bold,
      //               //       ),
      //               //     ),
      //               //   ],
      //               // ),
      //               // Container(
      //               //   width: double.infinity,
      //               //   height: 1.0,
      //               //   color: Colors.black,
      //               // ),
      //               // Row(
      //               //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               //   children: [
      //               //     Text(
      //               //       '4.00am',
      //               //       style: TextStyle(
      //               //         color: Color(0xff221c0f),
      //               //         fontSize: 25,
      //               //         fontWeight: FontWeight.bold,
      //               //       ),
      //               //     ),
      //               //     Text(
      //               //       'الفجر',
      //               //       style: TextStyle(
      //               //         color: Color(0xff221c0f),
      //               //         fontSize: 25,
      //               //         fontWeight: FontWeight.bold,
      //               //       ),
      //               //     ),
      //               //   ],
      //               // ),
      //               // Container(
      //               //   width: double.infinity,
      //               //   height: 1.0,
      //               //   color: Colors.black,
      //               // ),
      //               // Row(
      //               //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               //   children: [
      //               //     Text(
      //               //       '4.00am',
      //               //       style: TextStyle(
      //               //         color: Color(0xff221c0f),
      //               //         fontSize: 25,
      //               //         fontWeight: FontWeight.bold,
      //               //       ),
      //               //     ),
      //               //     Text(
      //               //       'الفجر',
      //               //       style: TextStyle(
      //               //         color: Color(0xff221c0f),
      //               //         fontSize: 25,
      //               //         fontWeight: FontWeight.bold,
      //               //       ),
      //               //     ),
      //               //   ],
      //               // ),
      //               // Container(
      //               //   width: double.infinity,
      //               //   height: 1.0,
      //               //   color: Colors.black,
      //               // ),
      //
      //             ],
      //           ),
      //         ),
      //       ), context:context  );
      //     },
      //     child: Container(
      //       padding: EdgeInsetsDirectional.only(start: 10.0),
      //       clipBehavior: Clip.antiAliasWithSaveLayer,
      //         child: Image.asset('assets/images/مئذنة.jpg'),
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.all(Radius.circular(70.0))
      //       ),
      //     ),
      //   ),
      //   title: Text(
      //     'السبحة',
      //     style: TextStyle(
      //       color: Color(0xff221c0f),
      //       fontSize: 25,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   centerTitle: true,
      //   actions: [
      //     IconButton(
      //       icon: Icon(
      //           Icons.info_outline_rounded,
      //           size: 30,
      //           color: Color(0xff221c0f)
      //       ),
      //       onPressed: ()
      //       {
      //         showModalBottomSheet( builder: (BuildContext context) => Container(
      //           color: Color(0xff967959).withOpacity(.5),
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   IconButton(onPressed: ()=>Navigator.pop(context),
      //                       icon: Icon(Icons.backspace_outlined,
      //                           size: 30,
      //                           color: Color(0xff221c0f)
      //                       )
      //                   ),
      //                   Padding(
      //                     padding: const EdgeInsets.only(right: 15.0),
      //                     child: Text(
      //                       'المساعدة',
      //                       style: TextStyle(
      //                         color: Color(0xff221c0f),
      //                         fontSize: 25,
      //                         fontWeight: FontWeight.bold,
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //               Text(
      //                 'نحن هنا للمساعدة',
      //                 style: TextStyle(
      //                   color: Color(0xff221c0f),
      //                   fontSize: 25,
      //                   fontWeight: FontWeight.bold,
      //               ),
      //                 // textAlign: TextAlign.center,
      //               )
      //             ],
      //           ),
      //         ), context:context  );
      //       },
      //     )
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: double.infinity,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.asset('assets/images/widgetphoto.jpg',
                          height: 150.0,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: double.infinity,
                          color: Colors.black.withOpacity(.4),
                          child: Text(
                            'سبحان الله',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  // Text(
                  //   'String',
                  //     style: TextStyle(
                  //       color: Color(0xff221c0f),
                  //       fontSize: 25,
                  //       fontWeight: FontWeight.bold,
                  //     ),
                  //
                  // ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: (Fun.counter ==33)? Colors.green:Color(0xff967959),
                            ),
                            child: DefMatBut(text: 'سبح', onPressed: ()
                            {
                              setState(() {
                                Apis. fetchData();
                                Fun.counterUP();
                              });
                            }),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: 50.0,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Color(0xff967959),
                            ),
                            child: Text(
                              '${Fun.counter}',
                              style: TextStyle(
                                color: Color(0xff221c0f),
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),


                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: DefMatBut(text: 'ابدا من جديد', onPressed: ()
                    {
                      setState(() {
                        Fun.counterReset();
                      });
                    }),
                  ),
                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
