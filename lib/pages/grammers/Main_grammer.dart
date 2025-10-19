import 'package:english_project/pages/grammers/subjective_agreement.dart';
import 'package:english_project/pages/grammers/subjunctive_forms.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../assets/color.dart';
import 'Tense_passive.dart';
import 'conditional_sentence.dart';
import 'infinitive_gerunds.dart';
import 'infinitives_gerunds.dart';
import 'nominalization.dart';
import 'relative_clause.dart';
class MainGrammer extends StatefulWidget {
  MainGrammer({super.key,required this.selected});
  int selected;
  @override
  State<MainGrammer> createState() => _MainGrammerState();
}

class _MainGrammerState extends State<MainGrammer> {
  Widget body(){
    switch(widget.selected){
      case 0: return RelativeClause();
      case 1: return TensePassive();
      case 2: return ConditionalSentence();
      case 3: return SubjunctiveForms();
      case 4: return SubjectiveAgreement();
      case 5: return Nominalization();
      case 6: return InfinitivesGerunds();
    }
    return Container();
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
      body: Container(
        color: bg,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
            child: body()
        ),
      ),
    );
  }
}
