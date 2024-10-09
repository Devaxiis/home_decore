import 'package:flutter/material.dart';
import 'package:home_app/library.dart';
import 'package:onboarding_animation/onboarding_animation.dart';

class OnboardScreenOne extends StatefulWidget {
  const OnboardScreenOne({super.key});

  @override
  State<OnboardScreenOne> createState() => _OnboardScreenOneState();
}

class _OnboardScreenOneState extends State<OnboardScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.clFFFFFFWhite,
    
      bottomNavigationBar: Container(
        height: 80,
        color: AppColors.clFFFFFFWhite,
        child: Row(
          children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                    width: 200,
                    child: OnBoardingAnimation(
                              pages: [
                               Container(),
                               Container(),
                               Container(),
                              ],
                              indicatorDotHeight: 7.0,
                              indicatorDotWidth: 20.0,
                              indicatorType: IndicatorType.expandingDots,
                              indicatorPosition: IndicatorPosition.bottomCenter,
                            ),
                  ),
                ],
              ),
       
            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(onPressed: (){}, child: Text("Next")),
            ))
          ],
        ),
      ),
    );
  }
}