import 'package:english_project/assets/color.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
class ReadingTileWidget extends StatefulWidget {
  ReadingTileWidget({super.key, required this.english, required this.persian});
  String english;
  String persian;
  @override
  State<ReadingTileWidget> createState() => _ReadingTileWidgetState();
}

class _ReadingTileWidgetState extends State<ReadingTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200.withOpacity(0.15),
                borderRadius: BorderRadius.circular(18),
                boxShadow: [BoxShadow(
                  blurRadius: 12,
                  color: Colors.black54.withOpacity(0.02),
                )],
                border: GradientBoxBorder(
                  gradient: LinearGradient(colors: [Colors.white.withOpacity(0.65), Colors.grey.shade200.withOpacity(0.3)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                  width: 2,
                ),
              ),

              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(9),
                child: Text(widget.english,style: TextStyle(fontSize: 23,color: wh),),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Text(widget.persian,textAlign:TextAlign.right,style: TextStyle(fontSize: 25,color: wh,fontFamily: 'per'),),
            ),

          ],
        ),
      ),
    );
  }
}
