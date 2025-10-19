import 'dart:async';
import 'package:english_project/assets/color.dart';
import 'package:english_project/data/quiz_questions.dart';
import 'package:english_project/pages/Quiz.dart';
import 'package:english_project/providers/question_timer_provider.dart';
import 'package:english_project/widgets/bg_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Questions extends StatefulWidget {
  Questions({super.key,required this.question_numer});
  int question_numer;
  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  Map<int,String>? ques;
  Map<int,String>? answ;
  List<int>? bar;
  void ze()async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('ttt', 0);
  }
  int? quiz_numm;
  @override
  void initState() {
    super.initState();
    ze();
    switch (widget.question_numer){
      case 1: ques = q1; answ = q1a; bar = q1t; break;
    }
  }
  int question_number = 0;
  int gs = 0;
  List<bool> s = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  bool back = false;
  bool start_quiz = true;
  bool next_vis = false;
  @override
  Widget build(BuildContext context) {
    if(question_number+1 != ques!.length && start_quiz == false){
      next_vis = true;
    }else{
      next_vis = false;
    }
    final timerProvider = Provider.of<TimerProvider>(context);

    if(timerProvider.quizf){
      timerProvider.pause_timer();
      result();
      Future.delayed(Duration(milliseconds: 200), () => Navigator.pushNamed(context,'quiz'));
    }
    double fw = MediaQuery.of(context).size.width;
    double fh = MediaQuery.of(context).size.height;

    return PopScope(
          canPop: false,
          child: Scaffold(
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

            Stack(
              children: [
                BgColor(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child:Column(
                    children: [
                      Container(
                        width: fw,
                        height: fh*0.87,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(15,15,15,2),
                                    child: Text("Questions",style: TextStyle(color: wh,fontSize: 38,fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(15,15,15,2),
                                    child: Container(
                                      width: 120,
                                      height: 50,

                                      child: Center(
                                          child:Text(_formatTime(timerProvider.remainingTime),style: TextStyle(color: wh,fontSize: 28,fontWeight: FontWeight.bold),)
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(14),
                                child: Column(
                                  children: [
                                    Text("Question ${question_number+1}",style: TextStyle(color: wh,fontSize: 23),),
                                    SizedBox(height: 20,),
                                    Container(
                                        width: MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          color: Colors.purple.withOpacity(0.25),
                                          borderRadius: BorderRadius.circular(35),
                                          boxShadow: [BoxShadow(
                                            blurRadius: 12,
                                            color: Colors.black54.withOpacity(0.02),
                                          )],
                                          border: GradientBoxBorder(
                                            gradient: LinearGradient(colors: [Colors.white.withOpacity(0.65), Colors.grey.shade200.withOpacity(0.3)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                            width: 2,
                                          ),
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(0,12,0,12),
                                            child: Text('${ques![question_number]}',textAlign: TextAlign.center,style: TextStyle(fontSize: 25,color: wh),),
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width:MediaQuery.of(context).size.width,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                          onTap: (){
                                            if(s[gs] == false){
                                              s[gs+1] = s[gs+2] =s[gs+3] = false;
                                              s[gs] = true;
                                            }else{
                                              s[gs] = false;}
                                            setState(() {});
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context).size.width*0.9,
                                            decoration: BoxDecoration(
                                              color: s[gs] == true ? bl.withOpacity(0.3) : Colors.grey.withOpacity(0.3),
                                              borderRadius: BorderRadius.circular(40),
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
                                              padding: const EdgeInsets.all(18),
                                              child: Text('1- ${answ![gs]}',style: TextStyle(color: wh,fontSize: 22.5)),
                                            ),
                                          )),
                                      SizedBox(height: 20),
                                      GestureDetector(
                                          onTap: (){
                                            if(s[gs+1] == false){
                                              s[gs] = s[gs+3] =s[gs+2] = false;
                                              s[gs+1] = true;
                                            }else{
                                              s[gs+1] = false;
                                            }
                                            setState(() {});
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context).size.width*0.9,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(40),
                                              boxShadow: [BoxShadow(
                                                blurRadius: 12,
                                                color: s[gs+1] == true ? bl.withOpacity(0.3) : Colors.grey.withOpacity(0.3),
                                              )],
                                              border: GradientBoxBorder(
                                                gradient: LinearGradient(colors: [Colors.white.withOpacity(0.65), Colors.grey.shade200.withOpacity(0.3)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                                width: 2,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(18),
                                              child: Text('2- ${answ![gs+1]}',style: TextStyle(color: wh,fontSize: 22.5)),),
                                          )),
                                      SizedBox(height: 20),
                                      GestureDetector(
                                          onTap: (){
                                            if(s[gs+2] == false){
                                              s[gs] = s[gs+1] =s[gs+3] = false;
                                              s[gs+2] = true;
                                            }else{
                                              s[gs+2] = false;
                                            }
                                            setState(() {});
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context).size.width*0.9,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(40),
                                              boxShadow: [BoxShadow(
                                                blurRadius: 12,
                                                color: s[gs+2] == true ? bl.withOpacity(0.3) : Colors.grey.withOpacity(0.3),
                                              )],
                                              border: GradientBoxBorder(
                                                gradient: LinearGradient(colors: [Colors.white.withOpacity(0.65), Colors.grey.shade200.withOpacity(0.3)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                                width: 2,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(18),
                                              child: Text('3- ${answ![gs+2]}',style: TextStyle(color: wh,fontSize: 22.5)),),
                                          )),
                                      SizedBox(height: 20),
                                      GestureDetector(
                                        onTap: (){
                                          if(s[gs+3] == false){
                                            s[gs] = s[gs+1] =s[gs+2] = false;
                                            s[gs+3] = true;
                                          }else{
                                            s[gs+3] = false;
                                          }
                                          setState(() {});
                                        },
                                        child: Container(
                                          width: MediaQuery.of(context).size.width*0.9,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(40),
                                            boxShadow: [BoxShadow(
                                              blurRadius: 12,
                                              color: s[gs+3] == true ? bl.withOpacity(0.3) : Colors.grey.withOpacity(0.3),
                                            )],
                                            border: GradientBoxBorder(
                                              gradient: LinearGradient(colors: [Colors.white.withOpacity(0.65), Colors.grey.shade200.withOpacity(0.3)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                              width: 2,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(18),
                                            child: Text('4- ${answ![gs+3]}',style: TextStyle(color: wh,fontSize: 22.5)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*0.1,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Visibility(
                                  visible: question_number == 0 ? false : true,
                                  child: GestureDetector(
                                    onTap: (){
                                      question_number--;
                                      gs = gs - 4;
                                      setState(() {});
                                    },
                                    child: Container(
                                        width: 59,
                                        height: 59,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200.withOpacity(0.15),
                                          borderRadius: BorderRadius.circular(40),
                                          boxShadow: [BoxShadow(
                                            blurRadius: 12,
                                            color: Colors.black54.withOpacity(0.02),
                                          )],
                                          border: GradientBoxBorder(
                                            gradient: LinearGradient(colors: [Colors.white.withOpacity(0.65), Colors.grey.shade200.withOpacity(0.3)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                            width: 2,
                                          ),
                                        ),
                                        child: Center(child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            SizedBox(width: 7,),

                                            Icon(Icons.arrow_back_ios,size:23,color: wh,),

                                          ],
                                        ))),
                                  ),
                                ),
                              ),
                              Stack(
                                children: [
                                  Visibility(
                                    visible: next_vis,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: GestureDetector(
                                        onTap: (){
                                          question_number++;
                                          gs = gs + 4;
                                          setState(() {});
                                        },
                                        child: Container(
                                            width: 59,
                                            height: 59,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade200.withOpacity(0.15),
                                              borderRadius: BorderRadius.circular(40),
                                              boxShadow: [BoxShadow(
                                                blurRadius: 12,
                                                color: Colors.black54.withOpacity(0.02),
                                              )],
                                              border: GradientBoxBorder(
                                                gradient: LinearGradient(colors: [Colors.white.withOpacity(0.65), Colors.grey.shade200.withOpacity(0.3)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                                width: 2,
                                              ),
                                            ),
                                            child: Center(child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                SizedBox(width: 3,),
                                                Icon(Icons.arrow_forward_ios,size:23,color: wh,),
                                              ],
                                            ))),
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: question_number+1 == ques!.length ? true : false,
                                    child:Padding(
                                      padding: const EdgeInsets.only(right: 20),

                                      child: GestureDetector(
                                        onTap: (){
                                          timerProvider.pause_timer();
                                          result();
                                          Future.delayed(Duration(milliseconds: 200), ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => QUIZPAGE())));
                                        },
                                        child: Container(
                                            width: 59,
                                            height: 59,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color.fromRGBO(0, 210, 0, 1),
                                                  Colors.green,
                                                  Color.fromRGBO(0, 150, 0, 1),
                                                ],
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                              ),
                                              borderRadius: BorderRadius.circular(30),
                                              color: Colors.green,
                                            ),
                                            child: Center(child: Icon(Icons.check_rounded,size: 35,color: bg,))),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
              ],
            ),
            Visibility(
              visible: start_quiz,
              child: Stack(
                children: [
                  Container(
                    width: fw,
                    height: fh,
                    color: bg,
                  ),
                  BgColor(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Quiz info',style: TextStyle(color: wh,fontSize: 32,fontWeight: FontWeight.bold),),
                          Container(
                            width: fw*0.94,
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 145,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color(0xFF1F37E5),
                                        Color(0xFF912FFF),
                                      ]),
                                      borderRadius: BorderRadius.circular(22)
                                  ),
                                  child:Center(
                                    child: Text('Lessons',style: TextStyle(color: wh,fontSize: 25,fontWeight: FontWeight.bold),),
                                  ),

                                ),
                                SizedBox(),
                                SizedBox(),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200.withOpacity(0.15),
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [BoxShadow(
                                      blurRadius: 12,
                                      color: Colors.black54.withOpacity(0.02),
                                    )],
                                    border: GradientBoxBorder(
                                      gradient: LinearGradient(colors: [Colors.white.withOpacity(0.65), Colors.grey.shade200.withOpacity(0.3)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                      width: 2,
                                    ),
                                  ),
                                  child: Center(child: Text(widget.question_numer.toString(),style: TextStyle(color: wh,fontSize: 25,fontWeight: FontWeight.bold),),
                                )),
                                Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200.withOpacity(0.15),
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [BoxShadow(
                                        blurRadius: 12,
                                        color: Colors.black54.withOpacity(0.02),
                                      )],
                                      border: GradientBoxBorder(
                                        gradient: LinearGradient(colors: [Colors.white.withOpacity(0.65), Colors.grey.shade200.withOpacity(0.3)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                        width: 2,
                                      ),
                                    ),
                                    child: Center(child: Text((widget.question_numer+1).toString(),style: TextStyle(color: wh,fontSize: 25,fontWeight: FontWeight.bold),),
                                    )),
                                Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200.withOpacity(0.15),
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [BoxShadow(
                                        blurRadius: 12,
                                        color: Colors.black54.withOpacity(0.02),
                                      )],
                                      border: GradientBoxBorder(
                                        gradient: LinearGradient(colors: [Colors.white.withOpacity(0.65), Colors.grey.shade200.withOpacity(0.3)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                        width: 2,
                                      ),
                                    ),
                                    child: Center(child: Text((widget.question_numer+2).toString(),style: TextStyle(color: wh,fontSize: 25,fontWeight: FontWeight.bold),),
                                    ))

                              ],
                            ),
                          ),
                          Container(
                            width: fw,
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Color(0xFF1F37E5),
                                            Color(0xFF912FFF),
                                          ]),
                                          borderRadius: BorderRadius.circular(22)
                                      ),
                                      child:Center(
                                        child: Icon(Icons.question_mark_rounded,size: 30,color: wh,),
                                      ),

                                    ),
                                    Container(
                                      width: 150,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200.withOpacity(0.15),
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [BoxShadow(
                                          blurRadius: 12,
                                          color: Colors.black54.withOpacity(0.02),
                                        )],
                                        border: GradientBoxBorder(
                                          gradient: LinearGradient(colors: [Colors.white.withOpacity(0.65), Colors.grey.shade200.withOpacity(0.3)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                          width: 2,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text('5 Questions',style: TextStyle(color: wh,fontSize: 21),),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Color(0xFF1F37E5),
                                            Color(0xFF912FFF),
                                          ]),
                                          borderRadius: BorderRadius.circular(22)
                                      ),
                                      child:Center(
                                        child: Icon(Icons.timer,size: 30,color: wh,),
                                      ),

                                    ),
                                    Container(
                                      width: 150,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200.withOpacity(0.15),
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [BoxShadow(
                                          blurRadius: 12,
                                          color: Colors.black54.withOpacity(0.02),
                                        )],
                                        border: GradientBoxBorder(
                                          gradient: LinearGradient(colors: [Colors.white.withOpacity(0.65), Colors.grey.shade200.withOpacity(0.3)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                          width: 2,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text('10 Minute',style: TextStyle(color: wh,fontSize: 21),),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(),
                          Container(
                            width: 270,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => QUIZPAGE()));
                                  },
                                  child: Container(
                                      width: 120,
                                      height: 59,
                                      decoration: BoxDecoration(
                                        color: Colors.red.withOpacity(0.6),
                                        borderRadius: BorderRadius.circular(40),
                                        boxShadow: [BoxShadow(
                                          blurRadius: 12,
                                          color: Colors.red.withOpacity(0.02),
                                        )],
                                        border: GradientBoxBorder(
                                          gradient: LinearGradient(colors: [Colors.red.withOpacity(1), Colors.grey.shade200.withOpacity(0.3)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                          width: 2,
                                        ),
                                      ),
                                      child: Center(
                                          child: Text('Cancle',style: TextStyle(color: wh,fontSize: 23),))),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    start_quiz = false;
                                    timerProvider.startTimer();
                                    setState(() {});
                                  },
                                  child: Container(
                                      width: 120,
                                      height: 59,
                                      decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(0.6),
                                        borderRadius: BorderRadius.circular(40),
                                        boxShadow: [BoxShadow(
                                          blurRadius: 12,
                                          color: Colors.green.withOpacity(0.02),
                                        )],
                                        border: GradientBoxBorder(
                                          gradient: LinearGradient(colors: [Colors.green.withOpacity(1), Colors.grey.shade200.withOpacity(0.3)],begin: Alignment.topRight,end: Alignment.bottomLeft),
                                          width: 2,
                                        ),
                                      ),
                                      child: Center(
                                          child: Text('Start',style: TextStyle(color: wh,fontSize: 23),))),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
      ]
      ),
          ),
      );
  }
  String _formatTime(int totalSecound){
    int minuts = (totalSecound%3600) ~/60;
    int seconds = totalSecound % 60;
    return "${minuts.toString().padLeft(2,"0")} : ${seconds.toString().padLeft(2,"0")}";
  }
  void result()async{
    final prefs = await SharedPreferences.getInstance();
    switch (widget.question_numer){
      case 1:
        double t1 = 0;
        if(s[bar![0]] == true) t1 = t1 +1; await prefs.setDouble('ttt', t1);
        if(s[bar![1]] == true) t1 = t1 +1; await prefs.setDouble('ttt', t1);
        if(s[bar![2]] == true) t1 = t1 +1; await prefs.setDouble('ttt', t1);
        if(s[bar![3]] == true) t1 = t1 +1; await prefs.setDouble('ttt', t1);
        if(s[bar![4]] == true) t1 = t1 +1; await prefs.setDouble('ttt', t1);
        break;
    }
  }

}

