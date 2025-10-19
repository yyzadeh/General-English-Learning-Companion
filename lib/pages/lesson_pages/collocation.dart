import 'package:english_project/assets/color.dart';
import 'package:flutter/material.dart';

class Collocation extends StatefulWidget {
  const Collocation ({super.key});

  @override
  State<Collocation> createState() => _State();
}

class _State extends State<Collocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: bg,
        child: Center(child: Text("No more data!",style: TextStyle(color: wh,fontSize: 26))),
      ),

    );
  }
}
