import 'dart:math';

import 'package:english_project/assets/color.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
class WBH extends StatefulWidget {
  WBH({ required this.width,required this.title, required this.body,required this.which});
  double width;
  String title;
  String body;
  double which;
  @override
  State<WBH> createState() => _WBHState();
}

class _WBHState extends State<WBH> {
  double h = 0;
  int r = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            setState(() {
              if(h == 0){
                h = widget.which.toDouble();
                r = 2;

              }else{
                h = 0.toDouble();
                r = 0;
              }
            });
          },
        child: Container(
          width: widget.width*0.9,
          height: 65,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFF1F37E5),
                Color(0xFF912FFF),
              ]),
              borderRadius: BorderRadius.circular(30)
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20,0,18,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.title,style: TextStyle(color: wh,fontSize: 21),),
                  RotatedBox(quarterTurns: r,
                  child: Icon( Icons.keyboard_arrow_down_rounded, color: wh,size: 32))
                ],
              ),
            ),
          ),
        )),
        SizedBox(height: 10,),
        AnimatedContainer(
            width: widget.width*0.9,
            height: h,
            decoration: BoxDecoration(
              color: Colors.grey.shade200.withOpacity(0.15),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [BoxShadow(
                blurRadius: 12,
                color: Colors.black54.withOpacity(0.02),
              )],
              border: Border.all(
                color: wh.withOpacity(0.4)
              ),
            ),
            duration: Duration(milliseconds: 400),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(child: Text(widget.body,textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 19),)),
            )
        ),
        SizedBox(height: 25,)
      ],
    );

  }
}