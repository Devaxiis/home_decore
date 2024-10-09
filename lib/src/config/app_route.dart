import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';


extension NavigationExtension on BuildContext{

/// naviagte to a push
  void onPush(Widget route){
    Navigator.push(this,MaterialPageRoute(builder: (_)=> Scaffold(
      body: Animate(
        effects: const [
          SlideEffect(
            duration: Duration(milliseconds: 700),
            curve: Curves.linear
          )
        ],
        child: route,
      ),
    )
    ) );
  }

  /// navigate to a named route and replace the current route
  void onReplacement(Widget route){
    Navigator.pushReplacement(this,MaterialPageRoute(builder: (_)=> Scaffold(
      body: Animate(
        effects: const [
          SlideEffect(
            duration: Duration(milliseconds: 700),
            curve: Curves.linear
          )
        ],
        child: route,
      ),
    ) ));
  }

  /// navigate to a named route and remove all prviuce routes
  void onPushAndRemoveUntil(Widget route){
    Navigator.pushAndRemoveUntil(this, MaterialPageRoute(builder: (_)=> Scaffold(
      body: Animate(
        effects: const [
          SlideEffect(
            duration: Duration(milliseconds: 700),
            curve: Curves.linear
          )
        ],
        child: route,
      ),
    )), (r)=>false);
  }

  /// Navigate to back
  void onBack(){
    Navigator.pop(this);
  }

}