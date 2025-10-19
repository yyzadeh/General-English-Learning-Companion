import 'package:english_project/assets/color.dart';
import 'package:english_project/data/word/words_meaning.dart';
import 'package:english_project/widgets/bg_color.dart';
import 'package:english_project/widgets/words_blue_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WORDS extends StatefulWidget {
  WORDS({super.key,required , required this.title, required this.lessonNumber});
  String title;
  int lessonNumber;
  @override
  State<WORDS> createState() => _WORDSState();
}

class _WORDSState extends State<WORDS> {
  List<String>? Eng;
  List<String>? Per;
  @override
  void initState() {
    switch (widget.lessonNumber) {
      case 0:
        Eng = LE1;
        Per = LF1;
        break;
    }
    super.initState();
  }
  int? ghg () {
    if(Eng == null){
      return 0;
    }else{
      return Eng?.length;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bg,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            statusBarColor: bg,
            statusBarIconBrightness: Brightness.light
        ),
        toolbarHeight: 0,
      ),
      backgroundColor: bg,
      body: Stack(
        children: [
          BgColor(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: ghg(),
                itemBuilder: (context,index){
                  return WORTILE(Eng: '${Eng?[index]}', Per: '${Per?[index]}',ind: index,);
                }
            )
          ),
        ],
      ),
    );
  }
}
