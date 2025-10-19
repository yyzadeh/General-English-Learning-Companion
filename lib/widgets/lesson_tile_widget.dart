import 'package:english_project/assets/color.dart';
import 'package:english_project/pages/LessonMore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../pages/grammers/Main_grammer.dart';

class LessonTileWidget extends StatefulWidget {
  LessonTileWidget({super.key, required this.title,required this.num,required this.switc,required this.gram_select});
  String title;
  int num;
  int switc;
  int gram_select;
  @override
  State<LessonTileWidget> createState() => _LessonTileWidgetState();
}
class _LessonTileWidgetState extends State<LessonTileWidget> {

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(12),
        child: GestureDetector(

          onTap: (){
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => widget.switc == 1 ? LESMOR(number: widget.num) : MainGrammer(selected: widget.gram_select,),
              ),
            );
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 400),
            width: MediaQuery.of(context).size.width*0.9,
            height: 73,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFF1F37E5),
                  Color(0xFF912FFF),
                ]),
                borderRadius: BorderRadius.circular(30)
            ),
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Text(widget.title,style: TextStyle(color: wh,fontSize: 25)),
            ),
          ),
        ),
      );
    }
  }
