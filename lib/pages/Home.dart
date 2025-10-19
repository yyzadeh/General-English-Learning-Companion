import 'package:english_project/assets/color.dart';
import 'package:english_project/data/quiz_data.dart';
import 'package:english_project/pages/Review.dart';
import 'package:english_project/widgets/bg_color.dart';
import 'package:english_project/widgets/bottom_navigation.dart';
import 'package:english_project/widgets/home_blue_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<String, double> quiz={};

  @override
  void initState() {
    Future.delayed(Duration(microseconds: 200),()async{
      final prefs = await SharedPreferences.getInstance();
      tl1 = prefs.getDouble('ttt') ?? 0;
      quiz =await {
        'true':tl1*20,
        'empty':100 - (tl1*20)
      };
      print(tl1);
      setState(() {});
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double fw = MediaQuery.of(context).size.width;
    double fh = MediaQuery.of(context).size.height;
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
                height: fh*0.85,
                decoration: BoxDecoration(
                    color: bg.withOpacity(0.1)
                ),
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,20,0,40),
                        child: Text("Home",style: TextStyle(color: wh,fontSize: 43,fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,0,20,0),
                        child: Container(
                          width: fw,
                          height: 280,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text('Review',style: TextStyle(color: wh,fontSize: 31,fontWeight: FontWeight.bold),),
                              ),
                              Stack(
                                children:[
                                  Visibility(child:SingleChildScrollView(
                                   scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 10,),
                                      Visibility(child: review(num:0),visible: tl1 == 0 ? false : true,)
                                    ],
                                  ),
                                ),visible: tl1 == 0 ? false : true,),
                                  Visibility(
                                      child: Container(
                                        width: fw,
                                        height: 180,
                                        child: Center(child: Text('1- Go to Quiz tab\n\t\t2- Start some quiz\n\t\t  3- Review the quiz here',style: TextStyle(color: wh,fontSize: 23),)),
                                      ),
                                    visible: tl1 == 0 ? true : false,
                                  )
                              ]
                              )
                            ],
                          ),
                        ),
                      ),
                      WBH(
                          width: fw,
                          which: 370,
                          title: "User guide",
                          body: "LESSON :\nhere you can see words, readings, and grammars of all lessons.\n\n"
                              "LITENER BOX :\nif you can not remember some words, check theme to review in Litener box page\n\n"
                              "QUIZ :\nDo some test to become ready for exam in this page"
                      ),
                      WBH(
                          width: fw,
                          which: 500,
                          title: "About us",
                          body: "This application has been designed and developed with the aim of facilitating the process of English language learning for students enrolled in the General English course at Isfahan University of Technology. By leveraging modern learning methodologies, this educational software strives to address students' academic needs in various aspects of the language, including vocabulary acquisition, grammar comprehension, and self-assessment exercises."

                          "The academic advisor of this project, Dr. Azadeh Emadi, Ph.D. in English language studies"

                          "The Android version of the application has been developed by Mr. Yousef Yousefian Zadeh, an undergraduate student in the Department of Electrical Engineering at Isfahan University of Technology."

                          "This application focuses on improving students' language skills by offering practice quizzes, and modules for reviewing vocabulary and grammatical structures."
                      ),
                      WBH(
                          width: fw,
                          which: 150,
                          title: "Contact us",
                          body: "Dr Azadeh Emadi :\n"
                              "emadiazadeh.classes@gmail.com\n"
                              "Developer : yousef.yousefian.85@gmail.com"
                      ),
                    ],
                  ),
                ),
              ),
              ),
              BOTNAV(s1: wh,s2: gr,s3: gr,s4: gr,),
            ],
          )
        ],
      ),
    );

  }
  Widget review({required int num}){

    List<Color> colorsChart=[
      Colors.green,
      bg
    ];
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,12,20,0),
      child: Container(
        width: MediaQuery.of(context).size.width*0.73,
        height: 185,
        decoration: BoxDecoration(
          color: Colors.grey.shade200.withOpacity(0.15),
          borderRadius: BorderRadius.circular(30),
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
          children: [
            PieChart(
              dataMap: quiz,
              colorList: colorsChart,
              chartRadius: 115,
              centerWidget: Text('${tl1*20}%',style: TextStyle(color: wh,fontSize: 22,fontWeight: FontWeight.bold),),
              legendOptions: LegendOptions(
                  showLegends: false
              ),
              chartValuesOptions: ChartValuesOptions(
                  showChartValues: false,
                  showChartValuesInPercentage: false,
                  showChartValuesOutside: false
              ),
              chartType: ChartType.ring,
              ringStrokeWidth: 20,
            
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Quiz 1',style: TextStyle(color: wh,fontWeight: FontWeight.bold,fontSize: 25)),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Review(num:num)));
                  },
                  child: Container(
                    width: 56,
                    height: 56,
                    child: Center(child: Icon(Icons.menu_book_rounded,color: wh,size: 25,)),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF1F37E5),
                            Color(0xFF912FFF),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),

                        borderRadius: BorderRadius.circular(50),
                        color: Colors.green
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
