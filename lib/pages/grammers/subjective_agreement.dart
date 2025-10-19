import 'package:flutter/material.dart';

import '../../assets/color.dart';

class SubjectiveAgreement extends StatelessWidget {
  const SubjectiveAgreement({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title("Basic Rule"),
          SizedBox(height: 8),
          Text("Singular subject → Singular verb\nPlural subject → Plural verb\nExample:\n1. The microcontroller controls the sensors.\n2. The engineers monitor the network.",style: TextStyle(color: wh,fontSize: 20)),
          SizedBox(height: 10),
          title("Indefinite Pronouns"),
          SizedBox(height: 8),
          Text("1. Singular: each, everyone, someone, anybody → Each module is tested individually.\n2. Plural: few, many, several → Several components are faulty.",style: TextStyle(color: wh,fontSize: 20)),
          SizedBox(height: 10),
          title("Collective Nouns"),
          SizedBox(height: 8),
          Text("1. In American English, treated as singular: The team is working on the firmware.\n2. In British English, can be plural: The team are working…",style: TextStyle(color: wh,fontSize: 20)),
          SizedBox(height: 10),
          title("Complex Subjects"),
          SizedBox(height: 8),
          Text("When joined by “and” → plural:\n• The keyboard and mouse are connected via USB.\nWhen joined by “or/nor” → verb agrees with the nearer subject:\n• Either the sensors or the main controller is faulty.\n• Neither the processors nor the memory modules are overheating.",style: TextStyle(color: wh,fontSize: 20)),
          SizedBox(height: 10),
          title("Amounts and periods of Time"),
          SizedBox(height: 8),
          Text("• Ten volts is enough for the circuit.\n• Three hours is the maximum test duration.",style: TextStyle(color: wh,fontSize: 20)),
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
              padding: const EdgeInsets.fromLTRB(42,14,42,0),
              child: Text(text,style: TextStyle(color: wh,fontSize: 20),)
          ),
        ),
      ),
    );
  }

}
