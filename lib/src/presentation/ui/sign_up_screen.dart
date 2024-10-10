import 'package:flutter/material.dart';
import 'package:home_app/library.dart';
import 'package:home_app/src/presentation/ui/onboard_screen_one.dart';
import 'package:home_app/src/presentation/widgets/login_button_wg.dart';
import 'package:home_app/src/presentation/widgets/login_screen_txtfild.dart';

import '../../config/app_typografy.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerNumber = TextEditingController();
  TextEditingController controllerDate = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.clFFFFFFWhite,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.onBack();
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: AppColors.cl363130Black,
            )),
        title: const Text(
          'Create Account',
          style: AppTypografy.appTitleLIn,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                    children: [
            LoginScreenTxtfild(
                  title: "Full Name",
                  hinttitle: "John",
                  isHaveEye: false,
                  controller: controllerName,
                  isNumber: false,
                  ),
            LoginScreenTxtfild(
                  title: "Email",
                  hinttitle: "example@example.com",
                  isHaveEye: false,
                  controller: controllerEmail,
                  isNumber: false,),
            LoginScreenTxtfild(
                  title: "Mobile Number",
                  hinttitle: "+998(**)*** ** **",
                  isHaveEye: false,
                  controller: controllerNumber,
                  isNumber: true,),
            LoginScreenTxtfild(
                  title: "Date of birth",
                  hinttitle: "12/23/2024",
                  isHaveEye: false,
                  controller: controllerDate,
                  isNumber: false,),
            LoginScreenTxtfild(
                  title: "Password",
                  hinttitle: "********",
                  isHaveEye: true,
                  controller: controllerPassword,
                  isNumber: false,),
            LoginScreenTxtfild(
                  title: "Password",
                  hinttitle: "********",
                  isHaveEye: true,
                  controller: controllerPassword,
                  isNumber: false,),
            Center(
                child: LoginButtonWg(
                    title: "Log In",
                    onTab: () {
                      context.onPushAndRemoveUntil(const OnboardScreenOne());
                    })),
                    ],
                  ),
          )),
    );
  }
}
