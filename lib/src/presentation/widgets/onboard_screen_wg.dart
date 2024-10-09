import 'package:flutter/material.dart';
import 'package:home_app/library.dart';
import 'package:home_app/src/utils/app_screen_h_w.dart';

class OnboardScreenWg extends StatelessWidget {
  const OnboardScreenWg({super.key, required this.image, required this.title, required this.description});

  final AssetImage image;
  final String title;
  final String description;

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
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(40)),
                        image:
                            DecorationImage(image: image, fit: BoxFit.cover)),
                  ),
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: AppColors.clFFFFFFWhite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: AppColors.clF4B5A4Salmon),
                          textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 20),
                      child: Text(
                        description,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.cl363130Black),
                            textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
