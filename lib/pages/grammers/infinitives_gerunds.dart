import 'package:flutter/material.dart';

import '../../assets/color.dart';

class InfinitivesGerunds extends StatelessWidget {
  const InfinitivesGerunds({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title("Gerund"),
          SizedBox(height: 8),
          Text("A gerund is the -ing form of a verb used as a noun.",style: TextStyle(color: wh,fontSize: 20)),
          SizedBox(height: 4),
          Text("Common uses:\n1. Subject of a sentence\no Testing new microchips requires advanced equipment.\n\n2. Object of a verb\no We recommend updating the firmware regularly.\n\n3. Object of a preposition\no The company is committed to improving network security.",style: TextStyle(color: wh,fontSize: 20)),
          SizedBox(height: 10),
          title("Examples"),
          SizedBox(height: 8),
          Text("• Calibrating sensors is essential for accurate measurements.\n• They suggested replacing the outdated components",style: TextStyle(color: wh,fontSize: 20)),
          SizedBox(height: 10),
          title("Infinitives"),
          SizedBox(height: 8),
          Text("Definition:\nAn infinitive is the base form of a verb, usually preceded by to.\n(to install, to measure, to optimize)\n\nCommon uses:\n1. Express purpose\no The team upgraded the circuit to improve efficiency.\n\n2. After certain adjectives\no It is necessary to check the power supply before starting.\n\n3. After certain verbs (decide, expect, plan, need, want, hope)\no We plan to integrate a new AI-based monitoring system.",style: TextStyle(color: wh,fontSize: 20)),
          SizedBox(height: 10),
          title("Examples"),
          SizedBox(height: 8),
          Text("• The software was designed to detect malware.\n• We need to replace the damaged capacitor",style: TextStyle(color: wh,fontSize: 20)),
          SizedBox(height: 10),
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
