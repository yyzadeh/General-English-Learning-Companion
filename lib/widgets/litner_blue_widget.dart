import 'package:english_project/assets/color.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class LITEBW extends StatefulWidget {
  LITEBW({super.key,required this.Eng , required this.Per});
  String Eng;
  String Per;
  @override
  State<LITEBW> createState() => _LITEBWState();
}

class _LITEBWState extends State<LITEBW> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15,10,15,10),
      child: Container(
        width: MediaQuery.of(context).size.width*0.9,
        height: 73,
        decoration: BoxDecoration(
          color: Colors.grey.shade200.withOpacity(0.15),
          borderRadius: BorderRadius.circular(50),
          boxShadow: [BoxShadow(
            blurRadius: 12,
            color: Colors.black54.withOpacity(0.02),
          )],
          border: GradientBoxBorder(
            gradient: LinearGradient(colors: [Colors.white.withOpacity(0.65), Colors.grey.shade200.withOpacity(0.3)],begin: Alignment.topRight,end: Alignment.bottomLeft),
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('${widget.Eng}',style: TextStyle(color: wh,fontSize: 23)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text('${widget.Per}',style: TextStyle(color: wh,fontSize: 23)),
              ),
            ],
          ),
        ),
      ),
    );;
  }
}
