import 'package:english_project/assets/color.dart';
import 'package:english_project/data/word/words_intro_data.dart';
import 'package:english_project/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class WordIntro extends StatefulWidget {
  WordIntro({super.key,required this.select,required this.eng});
  int select;
  String eng;
  @override
  State<WordIntro> createState() => _WordIntroState();
}

class _WordIntroState extends State<WordIntro> {
  List data = word_intro;
  bool vis = true;
  @override
  void initState() {
    if(data[widget.select] == """""" || data[widget.select] == null){
      vis=false;
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: bg,toolbarHeight: 0,),
      backgroundColor: bg,
      body:Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(widget.eng,style: TextStyle(color: og,fontSize: 35,),),
              ),
              Visibility(
                visible: vis,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(data[widget.select],style: TextStyle(color: wh,fontSize: 23),),
                ),
              ),
              Visibility(
                visible: !vis,
                  child:Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.8,
                    child: Center(
                      child: Text('No more data !',style: TextStyle(color: gr,fontSize: 35,),),
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
