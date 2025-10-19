import 'package:flutter/material.dart';

import '../assets/color.dart';

class BgColor extends StatefulWidget {
  const BgColor({super.key});

  @override
  State<BgColor> createState() => _BgColorState();
}

class _BgColorState extends State<BgColor> {
  @override
  Widget build(BuildContext context) {
    double fw = MediaQuery.of(context).size.width;
    double fh = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Container(
          width: fw,
          height: fh,
          decoration:BoxDecoration(
              color: bg.withOpacity(0.3)
          ),
        ),
        Container(
          width: fw,
          height: fh,
          decoration:BoxDecoration(
              gradient: RadialGradient(
                  radius: 0.43,
                  colors: [
                    Color(0xFF0086FE),
                    Color.fromRGBO(1, 1, 1, 0)
                  ],
                  center: Alignment(0.63, -0.65)
              )
          ),
        ),
        Container(
          width: fw,
          height: fh,
          decoration:BoxDecoration(
              gradient: RadialGradient(
                  radius: 0.53,
                  colors: [
                    Color(0xFF0086FE),
                    Color.fromRGBO(1, 1, 1, 0)
                  ],
                  center: Alignment(1, -0.0)
              )
          ),
        ),
        Container(
          width: fw,
          height: fh,
          decoration:BoxDecoration(
              gradient: RadialGradient(
                  radius: 0.6,
                  colors: [
                    Color(0xFF0086FE),
                    Color.fromRGBO(1, 1, 1, 0)
                  ],
                  center: Alignment(-1, 0.4)
              )
          ),
        ),
        Container(
          width: fw,
          height: fh,
          decoration:BoxDecoration(
              gradient: RadialGradient(
                  radius: 0.7,
                  colors: [
                    Color(0xFF62208B),
                    Color.fromRGBO(1, 1, 1, 0)
                  ],
                  center: Alignment(-0.45, -0.62)
              )
          ),
        ),
        Container(
          width: fw,
          height: fh,
          decoration:BoxDecoration(
              gradient: RadialGradient(
                  radius: 0.7,
                  colors: [
                    Color(0xFF62208B),
                    Color.fromRGBO(1, 1, 1, 0)
                  ],
                  center: Alignment(-1, 0.63)
              )
          ),
        ),
        Container(
          width: fw,
          height: fh,
          decoration:BoxDecoration(
              gradient: RadialGradient(
                  radius: 0.7,
                  colors: [
                    Color(0xFF62208B),
                    Color.fromRGBO(1, 1, 1, 0)
                  ],
                  center: Alignment(1, 1)
              )
          ),
        ),
      ],
    );
  }
}
