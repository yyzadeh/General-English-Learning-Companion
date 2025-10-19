import 'dart:async';
import 'package:flutter/cupertino.dart';
class TimerProvider extends ChangeNotifier{
  int _remaningTime = 600;
  int _initialTime = 600;
  Timer? _timer;
  bool _isRunning = false;
  bool _quizf = false;

  int get remainingTime => _remaningTime;
  int get initialTime => _initialTime;
  bool get isRunning => _isRunning;
  bool get quizf => _quizf;

  void startTimer (){
    if(_timer != null || _remaningTime ==0){
      _quizf = true;
      _remaningTime = _initialTime;
      notifyListeners();
      return;
    }
    _isRunning = true;
    _timer = Timer.periodic(Duration(seconds: 1), (timer){
      if(_remaningTime > 0){
        _quizf = false;

        _remaningTime--;
        notifyListeners();
      }else{
        _quizf = true;
        _timer?.cancel();
        _timer = null;
        _isRunning = false;
        notifyListeners();
      }
    });
  }
  void pause_timer(){
    _timer?.cancel();
    _timer = null;
    _isRunning = false;
    _remaningTime = _initialTime;
    _quizf = false;
    notifyListeners();
  }
}