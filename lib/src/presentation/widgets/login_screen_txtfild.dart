import 'package:home_app/library.dart';
import 'package:home_app/src/config/app_typografy.dart';
import 'package:home_app/src/utils/app_input_formatter.dart';
import 'package:home_app/src/utils/app_screen_h_w.dart';

class LoginScreenTxtfild extends StatefulWidget {
  const LoginScreenTxtfild({
    super.key,
    required this.title,
    required this.hinttitle,
    required this.isHaveEye,
    required this.controller, required this.isNumber,
  });

  final String title;
  final String hinttitle;
  final bool isHaveEye;
  final TextEditingController controller;
  final bool isNumber;

  @override
  State<LoginScreenTxtfild> createState() => _LoginScreenTxtfildState();
}

class _LoginScreenTxtfildState extends State<LoginScreenTxtfild> {
  bool isVisable = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: context.phoneWidth(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: AppTypografy.emailOrPassLIn,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(28),
            child: ColoredBox(
              color: AppColors.clFAF0E6Beige,
              child: TextField(
                controller: widget.controller,
                keyboardType: widget.isHaveEye
                    ? TextInputType.name
                    : TextInputType.emailAddress,
                obscureText: widget.isHaveEye? !isVisable: false,
                inputFormatters: widget.isNumber ?[AppInputFormatter.maskFormat]:null,
                decoration: InputDecoration(
                    hintText: widget.hinttitle,
                    hintStyle: AppTypografy.hintLIn,
                    prefix: const SizedBox(
                      width: 20,
                    ),
                    suffixIcon: widget.isHaveEye
                        ? IconButton(
                            onPressed: () {
                              isVisable = !isVisable;
                              setState(() {});
                            },
                            icon: isVisable == true
                                ? const Icon(
                                    Icons.visibility,
                                    color: AppColors.clCC7861Terracotta,
                                  )
                                : const Icon(
                                    Icons.visibility_off,
                                    color: AppColors.clCC7861Terracotta,
                                  ))
                        : null,
                    border: InputBorder.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
