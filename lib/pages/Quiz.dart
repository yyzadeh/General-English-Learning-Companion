import 'package:english_project/assets/color.dart';
import 'package:english_project/data/quiz_data.dart';
import 'package:english_project/pages/Questions.dart';
import 'package:english_project/widgets/bg_color.dart';
import 'package:english_project/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QUIZPAGE extends StatefulWidget {
  const QUIZPAGE({super.key});
  @override
  State<QUIZPAGE> createState() => _QUIZPAGEState();
}

class _QUIZPAGEState extends State<QUIZPAGE> {
  List<Color> colorsChart=[
    Colors.green,
    bg
  ];
  Map<String, double> quiz={};
  @override
  void initState() {
    Future.delayed(Duration.zero,()async{
      final prefs = await SharedPreferences.getInstance();
      tl1 = prefs.getDouble('ttt') ?? 0;
      quiz =await {
        'true':tl1*20,
        'empty':100 - (tl1*20)
      };
      setState(() {});
    });
    Future.delayed(Duration(milliseconds: 200),(){
      setState(() {

      });
    });
    super.initState();
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
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*.85,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Quiz",style: TextStyle(color: wh,fontSize: 42,fontWeight: FontWeight.bold)),

                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 170,
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
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(22,0,22,0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text('Quiz 1',style: TextStyle(color: wh,fontSize: 30,fontWeight: FontWeight.bold),),
                                      Stack(
                                        children: [
                                          Visibility(
                                        visible: tl1 == 0 ? true : false,
                                        child: GestureDetector(
                                        onTap: (){Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Questions(question_numer: 1)), (route) => false);},
                                        child: Container(
                                          width: 140,
                                          height: 48,
                                          child: Center(child: Text('View',style: TextStyle(color: wh,fontWeight: FontWeight.bold,fontSize: 21),)),
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(colors: [
                                                  Color(0xFF1F37E5),
                                                  Color(0xFF912FFF),
                                                ]),
                                                borderRadius: BorderRadius.circular(30)
                                            ),
                                        ),
                                      )
                                      ),
                                          Visibility(child: Row(
                                            children: [
                                              Text('Finished',style: TextStyle(color: wh,fontSize: 22,fontWeight: FontWeight.bold),),
                                              Icon(Icons.check_rounded,size: 25,color: Colors.green,)
                                            ],
                                          ),visible: tl1 == 0 ? false : true,)
                                        ]
                                      )
                                    ],
                                  ),
                                  cir_char()
                                ],
                              ),
                            )
                        ),
                      )
                    ],
                  ),
                ),
              ),
              BOTNAV(s1: gr, s2: gr, s3: gr, s4: wh)
            ],
          ),
        ],
      ),
    );
  }
  Widget cir_char(){
    Map<String, double> dataMap = {
      "Flutter": 5,
      "React": 3,
      "Xamarin": 2,
      "Ionic": 2,
    };
    final colorList = <Color>[
      Colors.greenAccent,
    ];
    return Container(
      child: PieChart(
        dataMap: quiz,
        colorList: colorsChart,
        chartRadius: 112,
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
    );
  }
}

