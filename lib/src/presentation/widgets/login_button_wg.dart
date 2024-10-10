import 'package:flutter/material.dart';

import '../../../library.dart';

class LoginButtonWg extends StatelessWidget {
  const LoginButtonWg({super.key, required this.title, required this.onTab});

  final String title;
  final Function() onTab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>onTab(),
      child: Container(
        height: 41,
        width: 130,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColors.clF4B5A4Salmon,
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 20,
              color: AppColors.clCC7861Terracotta,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
