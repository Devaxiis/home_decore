import 'package:flutter/material.dart';
import 'package:home_app/library.dart';
import 'package:home_app/src/utils/app_screen_h_w.dart';

class OnboardScreenWg extends StatelessWidget {
  const OnboardScreenWg({super.key, required this.image});

  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.phoneHeight(),
      width: context.phoneWidth(),
      child: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.topCenter,
                color: AppColors.clFAF0E6Beige,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Container(
                    width: context.phoneWidth(),
                    height: context.phoneHeight(),
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(40)),
                        image: DecorationImage(
                            image: image,
                            fit: BoxFit.cover)),
                  ),
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: AppColors.clFFFFFFWhite,
              )),
        ],
      ),
    );
  }
}
