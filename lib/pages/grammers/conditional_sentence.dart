import 'package:flutter/material.dart';

import '../../assets/color.dart';

class ConditionalSentence extends StatelessWidget {
  const ConditionalSentence({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title("Conditional Sentences"),
          SizedBox(height: 8),
          Text("Conditionals express hypothetical situations, possible outcomes, or cause–effect relationships.In engineering, they often describe system behavior under certain conditions.",style: TextStyle(color: wh,fontSize: 20)),
          SizedBox(height:8),
          title("Zero Conditional"),
          SizedBox(height: 8),
          Text("Form: If + Present Simple, Present Simple\nUse: To describe rules, laws, or always-true results.\nExample:",style: TextStyle(color: wh,fontSize: 20)),
          Text("1. If the voltage exceeds the limit, the circuit shuts down automatically.\n2. If a bit in the memory is corrupted, the processor reads incorrect data.",style: TextStyle(color: wh,fontSize: 20)),
          SizedBox(height:8),
          title("First Conditional"),
          SizedBox(height: 8),
          Text("Form: If + Present Simple, will + Base Verb\nUse: For future situations likely to happen.\nExample:",style: TextStyle(color: wh,fontSize: 20)),
          Text("1. If the server fails, the backup system will take over.\n2. If the CPU overheats, it will reduce its clock speed.",style: TextStyle(color: wh,fontSize: 20)),
          SizedBox(height:8),
          title("Second Conditional"),
          SizedBox(height: 8),
          Text("Form: If + Past Simple, would + Base Verb\nUse: For hypothetical or unlikely situations.\nExample:",style: TextStyle(color: wh,fontSize: 20)),
          Text("1. If the microcontroller had more I/O ports, it would support additional sensors.\n2. If I were in charge, I would choose a more energy-efficient processor.",style: TextStyle(color: wh,fontSize: 20)),
          SizedBox(height:8),
          title("Third Conditional "),
          SizedBox(height: 8),
          Text("Form: If + Past Perfect, would have + Past Participle\nUse: For regrets or different possible past outcomes.\nExample:",style: TextStyle(color: wh,fontSize: 20)),
          Text("1. If the capacitor had been installed correctly, the device would have functioned.\n2. If we had used thermal paste, the chip would have lasted longer.",style: TextStyle(color: wh,fontSize: 20)),
          SizedBox(height:8),
          title("Mixed Conditionals"),
          SizedBox(height: 8),
          Text("• Past condition → Present result:\nIf the prototype had been tested thoroughly, it would be in production now.\n\n• Present condition → Past result:\nIf the firmware were stable, last week’s update wouldn’t have failed.",style: TextStyle(color: wh,fontSize: 20)),

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
