import 'package:flutter/material.dart';

import '../../assets/color.dart';
class TensePassive extends StatefulWidget {
  const TensePassive({super.key});

  @override
  State<TensePassive> createState() => _TensePassiveState();
}

class _TensePassiveState extends State<TensePassive> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    padding: const EdgeInsets.all(16.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      title('Tenses'),
      const SizedBox(height: 8),
      Table(
    border: TableBorder.symmetric(inside: BorderSide(width: 1, color: Color(0xFF1F37E5).withOpacity(0.7))),
    columnWidths: const {
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(1),
          2: FlexColumnWidth(1),
        },
        children:  [
          TableRow(
            decoration: BoxDecoration(
                color: Color(0xFF1F37E5).withOpacity(0.7),
                borderRadius: BorderRadius.vertical(top: Radius.circular(8))
            ),
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Past", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Present", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Future", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
            ],
          ),
          TableRow(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF1F37E5).withOpacity(0.7))
            ),
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Simple", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Simple", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Simple", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
            ],
          ),
          TableRow(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF1F37E5).withOpacity(0.7))
            ),
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Continuous", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Continuous", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Continuous", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
            ],
          ),
          TableRow(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF1F37E5).withOpacity(0.7))
            ),
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Prefect", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Prefect", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Prefect", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
            ],
          ),
        ],
      ),
      SizedBox(height: 20),
      title('Passive'),
      SizedBox(height: 8),
      Text("1. Omitting Subject (Doer)",style: TextStyle(color: wh,fontSize: 20)),
      Text("2. Replacing object with the deleted subject",style: TextStyle(color: wh,fontSize: 20)),
      Text("3. Adding appropriate “to be verb” ( am/is/are/was/were/be/being/ been)",style: TextStyle(color: wh,fontSize: 20),),
      Text("4. P.P form of the verb",style: TextStyle(color: wh,fontSize: 20)),
      const SizedBox(height: 9),
      Text("Active",style: TextStyle(color: wh,fontSize: 24)),
      const SizedBox(height: 8),
      Table(
        border: TableBorder.symmetric(inside: BorderSide(width: 1, color: Color(0xFF1F37E5).withOpacity(0.7))),
        columnWidths: const {
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(1),
          2: FlexColumnWidth(1),
        },
        children:  [
          TableRow(
            decoration: BoxDecoration(
                color: Color(0xFF1F37E5).withOpacity(0.7),
                borderRadius: BorderRadius.vertical(top: Radius.circular(8))
            ),
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Subject", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Verb", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Object", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
            ],
          ),
          TableRow(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF1F37E5).withOpacity(0.7))
            ),
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Ali", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("broke", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("the window", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
            ],
          ),
          TableRow(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF1F37E5).withOpacity(0.7))
            ),
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Ali", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("is breaking", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("the window", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
            ],
          ),
        ],
      ),
      const SizedBox(height: 8),
      Text("Passive",style: TextStyle(color: wh,fontSize: 23.5)),
      const SizedBox(height: 8),
      Table(
        border: TableBorder.symmetric(inside: BorderSide(width: 1, color: Color(0xFF1F37E5).withOpacity(0.7))),
        columnWidths: const {
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(1),
        },
        children:  [
          TableRow(
            decoration: BoxDecoration(
                color: Color(0xFF1F37E5).withOpacity(0.7),
                borderRadius: BorderRadius.vertical(top: Radius.circular(8))
            ),
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Verb", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Subject", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
            ],
          ),
          TableRow(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF1F37E5).withOpacity(0.7))
            ),
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("The window", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("was broken.", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
            ],
          ),
          TableRow(
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF1F37E5).withOpacity(0.7))
            ),
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("The window", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("is being broken.", textAlign: TextAlign.center,style: TextStyle(color: wh,fontSize: 16)),
              ),
            ],
          ),
        ],
      ),


      SizedBox(height: 20),

    // Table Section
      title("Simple present"),
      const SizedBox(height: 8),
      Center(child: Text("do / does + -s third person",style: TextStyle(color: wh,fontSize: 22))),

      const SizedBox(height: 15),
      Text("Function:  General truth, scientific facts, routine activities",style: TextStyle(color: wh,fontSize: 20)),
      SizedBox(height: 6),
      Text("Adverbs of frequency: usually, sometimes, never, always, …",style: TextStyle(color: wh,fontSize: 20)),
      SizedBox(height: 6),
      Text("1. I go to school.",style: TextStyle(color: wh,fontSize: 18)),
      SizedBox(height: 4),
      Text("2. I don’t go to school.",style: TextStyle(color: wh,fontSize: 18)),
      SizedBox(height: 4),
      Text("3. Do you go to school?",style: TextStyle(color: wh,fontSize: 18)),
      SizedBox(height: 4),
      Text("4. She writes a book.",style: TextStyle(color: wh,fontSize: 18)),
      SizedBox(height: 4),
      Text("5. She doesn’t write a book.",style: TextStyle(color: wh,fontSize: 18)),
      SizedBox(height: 4),
      Text("6. Does she write a book?",style: TextStyle(color: wh,fontSize: 18)),
      SizedBox(height: 6),
      Text("passive: A book is written.",style: TextStyle(color: wh,fontSize: 19)),

      const SizedBox(height: 20),
      title("Active examples"),
      const SizedBox(height: 15),
      Text("1. The term engineer properly denotes a person who has received professional training in pure and applied science.",style: TextStyle(color: wh,fontSize: 20)),
      SizedBox(height: 6),
      Text("2. Civil engineering deals with the creation, improvement, and protection of …..",style: TextStyle(color: wh,fontSize: 20)),
      SizedBox(height: 6),
      Text("3. Engineers in mechanical engineering design, test, build, and operate machinery of all types.",style: TextStyle(color: wh,fontSize: 20)),
      SizedBox(height: 6),
      Text("4. An engineer who works in any of the above-mentioned fields usually requires a basic knowledge of the other engineering fields.",style: TextStyle(color: wh,fontSize: 20)),
    const SizedBox(height: 20),

      title("Passive examples"),
      const SizedBox(height: 8),
      Text("1. Engineering as a term is applied to the efficient use of the materials.",style: TextStyle(color: wh,fontSize: 20)),
      SizedBox(height: 6),
      Text("2. In modern terminology these latter occupations are known as crafts … .",style: TextStyle(color: wh,fontSize: 20)),
      SizedBox(height: 6),
      Text("3. Chemical engineering is concerned with the design, construction, and ….",style: TextStyle(color: wh,fontSize: 20)),
      const SizedBox(height: 8),
      title("Present continuous"),
      const SizedBox(height: 8),
      Center(child: Text("am / is / are + ing",style: TextStyle(color: wh,fontSize: 22))),

      const SizedBox(height: 8),
      Text("Function:  ongoing action at the moment.",style: TextStyle(color: wh,fontSize: 22)),
      Text("Now, at the moment, right now,….",style: TextStyle(color: wh,fontSize: 22)),
      const SizedBox(height: 6),
       Text("1- I am going to school.",style: TextStyle(color: wh,fontSize: 20)),
       Text("I’m not going to school.",style: TextStyle(color: wh,fontSize: 20)),
       Text("Am I going to school?",style: TextStyle(color: wh,fontSize: 20)),
       Text("She is writing a book.",style: TextStyle(color: wh,fontSize: 20)),
       Text("She isn’t writing a book.",style: TextStyle(color: wh,fontSize: 20)),
       Text("Is she writing a book?",style: TextStyle(color: wh,fontSize: 20)),
      const SizedBox(height: 8),

      title("Examples"),
      const SizedBox(height: 8),
      Text("1. The crankshaft is now rotating via the up-and-down motion of the pistons.",style: TextStyle(color: wh,fontSize: 20)),
      const SizedBox(height: 6),
      Text("2. The bus enable the components in a computer to communicate as program instructions are being carried out.",style: TextStyle(color: wh,fontSize: 20)),
      const SizedBox(height: 8),
      title("Present prefect"),
      const SizedBox(height: 8),
      Center(child: Text("have / has + PP",style: TextStyle(color: wh,fontSize: 22))),
      const SizedBox(height: 8),
      Text("Function:  completed action",style: TextStyle(color: wh,fontSize: 20)),
      SizedBox(height: 4),
      Text("Since, for, yet, still, …",style: TextStyle(color: wh,fontSize: 20)),
      SizedBox(height: 6),
      Text("I have gone to school.",style: TextStyle(color: wh,fontSize: 20)),
      Text("I haven’t gone to school.",style: TextStyle(color: wh,fontSize: 20)),
      Text("have you gone to school?",style: TextStyle(color: wh,fontSize: 20)),
      Text("She has written a book.",style: TextStyle(color: wh,fontSize: 20)),
      Text("She hasn’t written a book.",style: TextStyle(color: wh,fontSize: 20)),
      Text("Has she written a book?",style: TextStyle(color: wh,fontSize: 20)),
      const SizedBox(height: 4),
      Text("Passive:  A book has been written.",style: TextStyle(color: wh,fontSize: 20)),

      const SizedBox(height: 8),
      title("Examples"),
      const SizedBox(height: 8),
      Text("The term engineer properly denotes a person who has received professional training in pure and applied science.",style: TextStyle(color: wh,fontSize: 20)),
      const SizedBox(height: 8),
      title("Simple past"),
      const SizedBox(height: 8),
      Center(child: Text("did | -ed",style: TextStyle(color: wh,fontSize: 22))),
      const SizedBox(height: 6),
      Text("Last year, testerdat ...",style: TextStyle(color: wh,fontSize: 20)),
      const SizedBox(height: 6),
      Text("I went to school.",style: TextStyle(color: wh,fontSize: 20)),
      Text("I didn’t go to school.",style: TextStyle(color: wh,fontSize: 20)),
      Text("Did you go to school?",style: TextStyle(color: wh,fontSize: 20)),
      Text("She wrote a book.",style: TextStyle(color: wh,fontSize: 20)),
      Text("Did she write a book?",style: TextStyle(color: wh,fontSize: 20)),
      Text("They didn’t play football.",style: TextStyle(color: wh,fontSize: 20)),
      const SizedBox(height: 4),
      Text("Passive: a book was written.",style: TextStyle(color: wh,fontSize: 20)),
      const SizedBox(height: 8),
      title("Past continuous"),
      const SizedBox(height: 8),
      Center(child: Text("was / were + ing",style: TextStyle(color: wh,fontSize: 22))),
      const SizedBox(height: 6),
      Text("Function:  ongoing action in the past",style: TextStyle(color: wh,fontSize: 20)),
      const SizedBox(height: 6),
      Text("I was going to school, suddenly a saw my friend.",style: TextStyle(color: wh,fontSize: 20)),
      Text("I was not going to school.",style: TextStyle(color: wh,fontSize: 20)),
      Text("Were you going to school?",style: TextStyle(color: wh,fontSize: 20)),
      Text("She was writing a book.",style: TextStyle(color: wh,fontSize: 20)),
      Text("She wasn’t writing a book.",style: TextStyle(color: wh,fontSize: 20)),
      Text("Was she writing a book.",style: TextStyle(color: wh,fontSize: 20)),
      const SizedBox(height: 4),
      Text("Passive:  A book was being written.",style: TextStyle(color: wh,fontSize: 20)),
      const SizedBox(height: 8),
      title("Past prefect"),
      const SizedBox(height: 8),
      Center(child: Text("had + PP",style: TextStyle(color: wh,fontSize: 22))),
      const SizedBox(height: 6),
      Text("I had gone to school, when he arrived.",style: TextStyle(color: wh,fontSize: 20)),
      Text("I hadn’t gone to school.",style: TextStyle(color: wh,fontSize: 20)),
      Text("had you gone to school?",style: TextStyle(color: wh,fontSize: 20)),
      Text("She had written a book.",style: TextStyle(color: wh,fontSize: 20)),
      Text("She hadn’t written a book.",style: TextStyle(color: wh,fontSize: 20)),
      Text("Had she written a book.",style: TextStyle(color: wh,fontSize: 20)),
      const SizedBox(height: 6),
      Text("Passive:  A book had been written.",style: TextStyle(color: wh,fontSize: 20)),

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
