import 'dart:convert';

import 'package:english_project/assets/color.dart';
import 'package:english_project/data/word/words_meaning.dart';
import 'package:english_project/pages/lesson_pages/word_intro.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:shared_preferences/shared_preferences.dart';
class WORTILE extends StatefulWidget {
  WORTILE({super.key,required this.Eng , required this.Per, required this.ind});
  String Eng;
  String Per;
  int ind;
  @override
  State<WORTILE> createState() => _WORTILEState();
}

class _WORTILEState extends State<WORTILE> {

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return or;
    }
    return bg;
  }
  bool isChecked = false;

  @override
  void initState() {
    Future.delayed(Duration(microseconds: 200),()async{
      final prefs = await SharedPreferences.getInstance();
      LiteWordE = prefs.getStringList('engdata') ?? [];
      isChecked = LiteWordE.contains('${widget.Eng}');
      setState(() {});
    });
    super.initState();
  }
  void save_lite_word_indexs()async{
    final prefs = await SharedPreferences.getInstance();
    LiteWordE = prefs.getStringList('engdata') ?? [];
    LiteWordP = prefs.getStringList('perdata') ?? [];
    LiteWordE.addAll([widget.Eng]);
    LiteWordP.addAll([widget.Per]);
    await prefs.setStringList('engdata', LiteWordE);
    await prefs.setStringList('perdata', LiteWordP);
  }
  void delete_lite_word_indexs()async{
    final prefs = await SharedPreferences.getInstance();
    LiteWordE = prefs.getStringList('engdata') ?? [];
    LiteWordP = prefs.getStringList('perdata') ?? [];
    LiteWordE.remove('${widget.Eng}');
    LiteWordP.remove('${widget.Per}');
    print(LiteWordP);
    await prefs.setStringList('engdata', LiteWordE);
    await prefs.setStringList('perdata', LiteWordP);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => WordIntro(eng:widget.Eng,select: widget.ind,)));},

        child: Container(
          width: MediaQuery.of(context).size.width*0.9,
          height: 71,
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
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('${widget.Eng}',style: TextStyle(color: wh,fontSize: 23)),
                ),
                Text('${widget.Per}',style: TextStyle(color: wh,fontSize: 23)),
                checBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget checBox(){
    return Checkbox(
      side: BorderSide(width: 0),
      checkColor: Color(0xFF0086FE),
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        if(isChecked == true){
          isChecked = false;
          delete_lite_word_indexs();
          setState(() {});
        }
        else{
          isChecked = true;
          save_lite_word_indexs();
          setState(() {});
        }
      },
    );
  }
}