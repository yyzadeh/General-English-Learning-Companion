import 'package:english_project/assets/color.dart';
import 'package:english_project/pages/grammers/relative_clause.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class KeyPoints extends StatefulWidget {
  KeyPoints({super.key,required this.selected});
  int selected;
  @override
  State<KeyPoints> createState() => _KeyPointsState();
}

class _KeyPointsState extends State<KeyPoints> {
  Widget body(){
    switch(widget.selected){
      case 0: return RelativeClause();
    }
    return Container();
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
      body: Container(
        color: bg,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: body()
        ),
      ),
    );
  }

}
