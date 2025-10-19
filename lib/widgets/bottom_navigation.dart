import 'package:english_project/assets/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class BOTNAV extends StatefulWidget {
  BOTNAV({super.key,required this.s1,required this.s2,required this.s3, required this.s4});
  Color? s1;
  Color? s2;
  Color? s3;
  Color? s4;

  @override
  State<BOTNAV> createState() => _BOTNAVState();
}

class _BOTNAVState extends State<BOTNAV> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25,10,25,10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 73,
        decoration: BoxDecoration(
          color: Colors.grey.shade200.withOpacity(0.15),
          borderRadius: BorderRadius.circular(50),
          boxShadow: [BoxShadow(
            blurRadius: 12,
            color: Colors.black54.withOpacity(0.02),
          )],
          border: GradientBoxBorder(
            gradient: LinearGradient(colors: [Colors.white.withOpacity(0.65), Colors.grey.shade200.withOpacity(0.3)],begin: Alignment.topRight,end: Alignment.bottomLeft),
            width: 2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          GestureDetector(
              onTap: (){
                 Navigator.pushNamed(context, 'home');
                 setState(() {});
              },
              child: SvgPicture.asset('lib/assets/home.svg',height: 39,color: widget.s1,)
            ),
          GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'les_gram');
                setState(() {});
              },
              child: SvgPicture.asset('lib/assets/lesson.svg',height: 34,color: widget.s2,)),
          GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'lite');
                setState(() {});
              },
              child: SvgPicture.asset('lib/assets/litner.svg',height: 34,color: widget.s3,)),
          GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'quiz');
                setState(() {});
              },
              child: Icon(Icons.fitness_center,size: 42.2,color: widget.s4,)),
          ],
        ),
      ),
    );
}}
