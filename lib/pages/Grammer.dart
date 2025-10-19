import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../assets/color.dart';
import '../widgets/bg_color.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/lesson_tile_widget.dart';

class Grammer extends StatefulWidget {
  const Grammer({super.key});

  @override
  State<Grammer> createState() => _GrammerState();
}

class _GrammerState extends State<Grammer> {
  Map<int, String> lessons = {
    0 : 'Relative clause',
    1 : 'Tense and Passive',
    2 : 'Conditional sentences',
    3 : 'Subjunctive forms',
    4 : 'Subject-verb agreement',
    5 : 'Nominalization',
    6 : 'Infinitives and Gerunds',
  };
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
            Column(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height*0.85,
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text("Grammars",style: TextStyle(color: wh,fontSize: 42,fontWeight: FontWeight.bold)),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height*0.79,
                            child: ListView.builder(

                                itemCount: 7,
                                itemBuilder: (context,index){
                                  return LessonTileWidget(switc:0,gram_select: index,title: '${lessons[index]}',num: index,);
                                }),
                          ),
                        ],
                      ),
                    )
                ),
                BOTNAV(s1: gr,s2: wh,s3: gr,s4: gr,)
              ],
            )
          ]),

    );
  }
}
