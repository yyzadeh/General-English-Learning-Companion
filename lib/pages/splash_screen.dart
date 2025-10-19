import 'package:english_project/assets/color.dart';
import 'package:english_project/pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {

    Future.delayed(Duration(seconds: 3),()async{
        Navigator.pushAndRemoveUntil(
            context, MaterialPageRoute(builder: (context) => Home()), (route) => false);
      });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(toolbarHeight: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: bg,
          statusBarIconBrightness: Brightness.light
      ),),
      body: Center(
        child: Container(
          color: bg,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 85),
                Text("WELCOME",style: TextStyle(
                    shadows: [
                      Shadow(
                        color: or.withOpacity(0.7),
                        offset: Offset(0, 0),
                        blurRadius: 20,
                      ),
                    ],
                    color: or,
                    fontSize: 47,
                    fontWeight: FontWeight.bold)
                ),
                Lottie.asset('lib/assets/loading.json',width: 200)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
