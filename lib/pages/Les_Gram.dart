import 'package:english_project/pages/Lessons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../assets/color.dart';
import '../widgets/bg_color.dart';
import '../widgets/bottom_navigation.dart';
import 'Grammer.dart';
import 'lesson_pages/words.dart';

class LesGram extends StatefulWidget {
  const LesGram({super.key});

  @override
  State<LesGram> createState() => _LesGramState();
}

class _LesGramState extends State<LesGram> {
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
                        padding: const EdgeInsets.fromLTRB(0,0,0,20),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15,0,15,0),
                          child: SingleChildScrollView(clipBehavior: Clip.none,scrollDirection: Axis.horizontal,),
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
                                    builder: (BuildContext context) => Lessons(),
                                  ),
                                );
                              },
                              child:Container(
                                child: Center(child: Text('Lessons',style: TextStyle(color: wh,fontSize: 28,fontWeight: FontWeight.bold),)),
                                width: MediaQuery.of(context).size.width*0.44,
                                height: MediaQuery.of(context).size.width*0.434,
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
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Grammer()));
                              },
                              child:Container(
                                child: Center(child: Text('Grammars',style: TextStyle(color: wh,fontSize: 28,fontWeight: FontWeight.bold),)),
                                width: MediaQuery.of(context).size.width*0.44,
                                height: MediaQuery.of(context).size.width*0.434,
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
