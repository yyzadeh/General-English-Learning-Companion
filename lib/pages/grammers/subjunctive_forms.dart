import 'package:flutter/material.dart';

import '../../assets/color.dart';

class SubjunctiveForms extends StatelessWidget {
  const SubjunctiveForms({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title("Subjunctive forms"),
          SizedBox(height: 8),
          Text("The subjunctive is used in formal English to express necessity, urgency, suggestions, orhypothetical situations.",style: TextStyle(color: wh,fontSize: 20)),
          SizedBox(height: 8),
          title("Mandative Subjunctive"),
          SizedBox(height: 8),
          Text("Form: Verb + that + Subject + Base Verb\nCommon verbs: suggest, recommend, insist, require, demand, propose\nExample:",style: TextStyle(color: wh,fontSize: 20)),
          Text("1- The professor insisted that every component be tested before assembly.\n2- The client requested that the PCB have gold-plated connectors.",style: TextStyle(color: wh,fontSize: 20)),
          SizedBox(height: 8),
          title("Hypothetical Subjunctive"),
          SizedBox(height: 8),
          Text("1- If I were designing the software, I would optimize the algorithm.\n2- If the network were more stable, we could deploy the update now",style: TextStyle(color: wh,fontSize: 20)),
          SizedBox(height: 8),
        ],
      ),
    );
  }
  Widget title(text){
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          height: 57,
          decoration: BoxDecoration(
              color: Color(0xFF912FFF),
              borderRadius: BorderRadius.circular(30)
          ),
          child: Padding(
              padding: const EdgeInsets.fromLTRB(50,14,50,0),
              child: Text(text,style: TextStyle(color: wh,fontSize: 20),)
          ),
        ),
      ),
    );
  }

}
