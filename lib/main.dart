import 'package:english_project/pages/Home.dart';
import 'package:english_project/pages/Les_Gram.dart';
import 'package:english_project/pages/Lessons.dart';
import 'package:english_project/pages/Litenerbox.dart';
import 'package:english_project/pages/Questions.dart';
import 'package:english_project/pages/Quiz.dart';
import 'package:english_project/pages/splash_screen.dart';
import 'package:english_project/providers/question_timer_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(
      ChangeNotifierProvider(
        create: (context) => TimerProvider(),
        child: MaterialApp(
          home: Home(),
          debugShowCheckedModeBanner: false,
          routes: {
            'home': (context) => const Home(),
            'les_gram': (context) => const LesGram(),
            'lite': (context) => const LITEPAGE(),
            'quiz': (context) => const QUIZPAGE(),
          },),
      ));
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFF051443),
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarIconBrightness: Brightness.light
  ));
}