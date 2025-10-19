import 'package:flutter/material.dart';

import '../../assets/color.dart';

class Nominalization extends StatelessWidget {
  const Nominalization({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title("Definition"),
          SizedBox(height: 8),
          Text("Nominalization is the process of turning verbs, adjectives, or other word types into nouns.In academic and technical writing, nominalization makes language more formal and compact.",style: TextStyle(color: wh,fontSize: 20)),
          SizedBox(height: 10),
          title("Form"),
          SizedBox(height: 8),
          Text("• Verb → Noun: analyze → analysis\n• Adjective → Noun: efficient → efficiency",style: TextStyle(color: wh,fontSize: 20)),
          SizedBox(height: 8),
          Text("Why use it in engineering?",style: TextStyle(color: wh,fontSize: 22)),
          SizedBox(height: 8),
          Text("• To focus on concepts or processes rather than actions.\n• To make reports and documentation more formal.",style: TextStyle(color: wh,fontSize: 20)),
          SizedBox(height: 10),
          title("Examples"),
          SizedBox(height: 8),
          Text("• We analyzed the circuit → Our analysis of the circuit showed minimal energy loss.\n• The processor is efficient → The processor’s efficiency improves system performance.",style: TextStyle(color: wh,fontSize: 20)),
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
