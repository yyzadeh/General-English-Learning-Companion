import 'package:english_project/assets/color.dart';
import 'package:english_project/data/reading/reading_data.dart';
import 'package:english_project/widgets/bg_color.dart';
import 'package:english_project/widgets/reading_tile_widget.dart';
import 'package:flutter/material.dart';

class Reading extends StatefulWidget {
  Reading({super.key, required this.lescounter});
  int lescounter;
  @override
  State<Reading> createState() => _ReadingState();
}

class _ReadingState extends State<Reading> {
  List<String> per=[];
  List<String> eng=[];
  @override
  void initState() {
    switch (widget.lescounter){
      case 0:
        eng = l1e;
        per = l1p;
        break;
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Stack(
        children: [
          BgColor(),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: l1e.length,
                itemBuilder: (context,index){
                  return ReadingTileWidget(english: eng[index], persian: per[index]);
                }
            )
          ),
        ],
      ),
    );
  }
}
