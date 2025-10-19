import 'package:english_project/assets/color.dart';
import 'package:english_project/data/word/words_meaning.dart';
import 'package:english_project/widgets/bg_color.dart';
import 'package:english_project/widgets/bottom_navigation.dart';
import 'package:english_project/widgets/litner_blue_widget.dart';
import 'package:english_project/widgets/words_blue_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
class LITEPAGE extends StatefulWidget {
  const LITEPAGE({super.key});

  @override
  State<LITEPAGE> createState() => _LITEPAGEState();
}

class _LITEPAGEState extends State<LITEPAGE> {
  List<String> _ENGL=[];
  List<String> _PERL=[];
  bool empty = true;
  Future<void> _loadData() async{
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _ENGL = prefs.getStringList('engdata') ?? [];
      _PERL = prefs.getStringList('perdata') ?? [];
      if(_ENGL.length != 0){
        empty = false;
      }
    });
  }
  @override
  void initState() {
    _loadData();
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
      body: EMPTYCHECKER(),
      backgroundColor: bg,
    );
  }
  Widget EMPTYCHECKER(){
    if(empty){
      return Stack(
        children: [
          BgColor(),
          Column(
          children: [
            Text('Litener Box',style: TextStyle(color: wh,fontSize: 41,fontWeight: FontWeight.bold)),
            Container(
                height:MediaQuery.of(context).size.height*0.78,
                width:MediaQuery.of(context).size.width,
                child:Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(28),
                        child: Text("1- In Lesson tab  \n    2- Select a lesson \n        3- Enter Word tab  \n            4- Check some words",style: TextStyle(color: wh,fontSize: 21,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                )
            ),
            BOTNAV(s1: gr, s2: gr, s3: wh, s4: gr),
          ],
        )],
      );
    }else{
      return Stack(
        children: [
          BgColor(),
          Column(
          children: [
            Container(
              height:MediaQuery.of(context).size.height*0.85,
              width:MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text('Litener Box',style: TextStyle(color: wh,fontSize: 41,fontWeight: FontWeight.bold)),
                    Container(
                        height:MediaQuery.of(context).size.height*0.8,
                        width:MediaQuery.of(context).size.width,
                        child: ListView.builder(
                            itemCount: _ENGL.length,
                            itemBuilder: (context,index){
                              return Dismissible(
                                  key: UniqueKey(),
                                  onDismissed: (direction) {
                                    void delete_lite_word_indexs()async{
                                      final prefs = await SharedPreferences.getInstance();
                                      LiteWordE = prefs.getStringList('engdata') ?? [];
                                      LiteWordP = prefs.getStringList('perdata') ?? [];
                                      LiteWordE.remove('${_ENGL[index]}');
                                      LiteWordP.remove('${_PERL[index]}');
                                      print(LiteWordP);
                                      await prefs.setStringList('engdata', LiteWordE);
                                      await prefs.setStringList('perdata', LiteWordP);
                                    }
                                    delete_lite_word_indexs();
                                  },
                                  child: LITEBW(Eng: '${_ENGL[index]}', Per: '${_PERL[index]}')
                              );
                            }
                        )
                    ),
                  ],
                ),
              ),
            ),
            BOTNAV(s1: gr, s2: gr, s3: wh, s4: gr),
          ],
        )],
      );
    }
  }
}
