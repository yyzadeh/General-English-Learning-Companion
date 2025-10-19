import 'package:english_project/assets/color.dart';
import 'package:english_project/widgets/bg_color.dart';
import 'package:english_project/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:english_project/widgets/lesson_tile_widget.dart';

class Lessons extends StatefulWidget {
  const Lessons({super.key});

  @override
  State<Lessons> createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {
  Map<int, String> lessons = {
    0 : 'Engineering',
    1 : 'Metals',
    2 : 'Laser',
    3 : 'Computer',
    4 : 'Automobile',
    5 : 'Concrete',
    6 : 'Glass',
    7 : 'Petroleum',
    8 : 'Textiles',
    9 : 'Road',
    10 : 'Telecommunication',
    11 : 'Airplane',
    12 : 'Nuclear Energy',
    13 : 'Chemistry of Plastics',
    14 : 'Iron and Steel',
    15 : 'Earthquake',
    16 : 'Automobile Engine',
    17 : 'Laser Applications',
    18 : 'Reinforced Concrete',
    19 : 'The Future of Computer',
    20 : 'Nuclear Fusion',
    21 : 'Airplane Structure',
    22 : 'Historical of Petroleum',
    23 : 'Textile Production',
    24 : 'Roadway Engineering Glossary',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: bg,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            statusBarColor: bg,
            statusBarIconBrightness: Brightness.light
        ),
        toolbarHeight: 0,
      ),
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
                       Text("Lesson",style: TextStyle(color: wh,fontSize: 42,fontWeight: FontWeight.bold)),
                       Container(
                         width: MediaQuery.of(context).size.width,
                         height: MediaQuery.of(context).size.height*0.79,
                         child: ListView.builder(

                             itemCount: 25,
                             itemBuilder: (context,index){
                               return LessonTileWidget(switc: 1, gram_select: 1,title: '${index+1}- ${lessons[index]}',num: index,);
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
