import 'package:english_project/assets/color.dart';
import 'package:english_project/pages/lesson_pages/Key_points.dart';
import 'package:english_project/pages/lesson_pages/collocation.dart';
import 'package:english_project/pages/lesson_pages/reading.dart';
import 'package:english_project/pages/lesson_pages/words.dart';
import 'package:english_project/widgets/bg_color.dart';
import 'package:english_project/widgets/bottom_navigation.dart';
import'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class LESMOR extends StatefulWidget {
  LESMOR({super.key, required this.number});
  int number;
  @override
  State<LESMOR> createState() => _LESMORState();
}

class _LESMORState extends State<LESMOR> {
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
      appBar: AppBar(
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
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.85,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,20,0,20),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15,0,15,0),
                              child: SingleChildScrollView(clipBehavior: Clip.none,scrollDirection: Axis.horizontal,child: Text("${lessons[widget.number]}",style: TextStyle(color: wh,fontSize: 40))),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.65,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push<void>(
                                      context,
                                      MaterialPageRoute<void>(
                                        builder: (BuildContext context) => WORDS(title: '${lessons[widget.number]}',lessonNumber: widget.number,),
                                      ),
                                    );
                                  },
                                  child:Container(
                                    child: Center(child: Text('Words',style: TextStyle(color: wh,fontSize: 28,fontWeight: FontWeight.bold),)),
                                    width: MediaQuery.of(context).size.width*0.394,
                                    height: MediaQuery.of(context).size.width*0.39,
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
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Collocation()));
                                  },
                                  child:Container(
                                    child: Center(child: Text('Collocation',style: TextStyle(color: wh,fontSize: 27,fontWeight: FontWeight.bold),)),
                                    width: MediaQuery.of(context).size.width*0.4,
                                    height: MediaQuery.of(context).size.width*0.39,
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
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(),
                          SizedBox(),
                        ],
                      ),
                    ),
                  ),
              BOTNAV(s1: gr, s2: wh, s3: gr, s4: gr)
            ],
          ),
        ],
      ),
    );
  }
}
