import 'package:english_project/assets/color.dart';
import 'package:english_project/data/quiz_questions.dart';
import 'package:english_project/pages/Home.dart';
import 'package:english_project/widgets/bg_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Review extends StatefulWidget {
  Review({super.key,required this.num});
  int num;
  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  Map<int,String>? questions;
  Map<int,String>? answ;
  List<int>? true_answer;

  int ques_switcher = 0;
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

  int gs = 0;
  bool next_vis = true;
  @override
  void initState() {
    switch (widget.num){
      case 0: questions = q1;true_answer = q1t; answ = q1a; break;
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    int t =true_answer![ques_switcher];

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
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.87,

                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Quiz ${widget.num+1}",style: TextStyle(color: wh,fontSize: 40,fontWeight: FontWeight.bold)),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,20,10,20),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
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
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0,12,0,12),
                                child: Text('${questions![ques_switcher]}',textAlign: TextAlign.center,style: TextStyle(fontSize: 25,color: wh),),
                              ),
                            )
                        ),
                      ),
                      Container(
                        width:MediaQuery.of(context).size.width,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.9,
                                    decoration: BoxDecoration(
                                      color: t==0||t==4||t==8||t==12||t==16 ? Colors.green.withOpacity(0.3) : or.withOpacity(0.3),
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
                                  ),
                              SizedBox(height: 20),

                              Container(
                                    width: MediaQuery.of(context).size.width*0.9,
                                decoration: BoxDecoration(
                                  color: t==1||t==5||t==9||t==13||t==17 ? Colors.green.withOpacity(0.3) : or.withOpacity(0.3),
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
                                      child: Text('2- ${answ![gs+1]}',style: TextStyle(color: wh,fontSize: 22.5)),),
                                  ),
                              SizedBox(height: 20),
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.9,
                                    decoration: BoxDecoration(
                                      color: t==2||t==6||t==10||t==14||t==18 ? Colors.green.withOpacity(0.3) : or.withOpacity(0.3),
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
                                      child: Text('3- ${answ![gs+2]}',style: TextStyle(color: wh,fontSize: 22.5)),),
                                  ),
                              SizedBox(height: 20),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.9,
                                  decoration: BoxDecoration(
                                    color: t==3||t==7||t==11||t==15||t==19 ? Colors.green.withOpacity(0.3) : or.withOpacity(0.3),
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
                                    child: Text('4- ${answ![gs+3]}',style: TextStyle(color: wh,fontSize: 22.5)),
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
                          visible: ques_switcher == 0 ? false : true,
                          child: GestureDetector(
                            onTap: (){
                              ques_switcher--;
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
                                    SizedBox(width: 9,),

                                    Icon(Icons.arrow_back_ios,size:25,color: wh,),

                                  ],
                                ))),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: ques_switcher == 4 ? false : true,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: GestureDetector(
                            onTap: (){
                              ques_switcher++;
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
                                    SizedBox(width: 4,),
                                    Icon(Icons.arrow_forward_ios,size:25,color: wh,),
                                  ],
                                ))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
