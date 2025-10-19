import 'package:english_project/assets/color.dart';
import 'package:flutter/material.dart';
  class RelativeClause extends StatelessWidget {
    const RelativeClause({super.key});

    @override
    Widget build(BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
title("Relative clauses"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text('''
Relative clauses provide additional information about a noun or pronoun without starting a new sentence.
They begin with relative pronouns like "who," "whom," "whose," "which," and "that."
There are two main types: defining (restrictive) and non-defining (non-restrictive) relative clauses.
Reduced relative clauses, on the other hand, eliminate the relative pronoun and some auxiliary verbs, making sentences more concise while retaining the core information.
          ''',style: TextStyle(color: wh,fontSize: 20),),
                )
            ),
          ),
          title("Defining Relative Clauses"),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text('A defining (restrictive) relative clause gives essential information about the noun it modifies. Removing it would change the sentences meaning.',style: TextStyle(color: wh,fontSize: 20),),
                  )
              )
          ),
          title("Examples for defining"),
          Padding(
              padding: const EdgeInsets.fromLTRB(8,8,8,0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text("""
"The book that I borrowed from the library is fascinating."
Explanation: The relative clause "that I borrowed from the library" is essential to identify which book we’re talking about.

"The sensor that detects temperature changes in real time is integral to the automated control system."
Explanation: The relative clause "that detects temperature changes in real time" specifies which sensor is important for the control system.
                    """,style: TextStyle(color: wh,fontSize: 20),),
                  )
              )
          ),
          title("Non-Defining Relative Clauses"),
          Padding(
              padding: const EdgeInsets.fromLTRB(8,8,8,0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text("""
Non-defining (non-restrictive) relative clauses provide additional, non-essential information. They are set off by commas and can be removed without changing the main idea.
                    """,style: TextStyle(color: wh,fontSize: 20),),
                  )
              )
          ),
          title("Examples: non-defining"),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text("""
"My sister, who lives in Canada, is visiting us next month."
Explanation: The relative clause "who lives in Canada" adds extra information but isn’t essential to understanding who "my sister" is.

"The algorithm, which was developed by a team of researchers, significantly improves processing speed."
Explanation: The non-defining clause "which was developed by a team of researchers" provides extra information about the algorithm, but the main sentence remains understandable without it.
                    """,style: TextStyle(color: wh,fontSize: 20),),
                  )
              )
          ),
          title("Reduced Relative Clauses"),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text("""
Reduced relative clauses are concise forms where certain words (like relative pronouns or auxiliary verbs) are omitted. They can make sentences more fluid and are often used in formal writing.
                    """,style: TextStyle(color: wh,fontSize: 20),),
                  )
              )
          ),
          title("Example"),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text("""
"The book borrowed from the library is fascinating."
Explanation: This is the reduced form of "The book that was borrowed from the library," eliminating "that was."
"The sensor detecting temperature changes is integral to the automated control system."
Explanation: This reduces "The sensor that detects temperature changes," making the sentence concise for a formal context.
                    """,style: TextStyle(color: wh,fontSize: 20),),
                  )
              )
          ),
        ],
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
