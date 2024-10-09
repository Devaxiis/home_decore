
import 'package:flutter_animate/flutter_animate.dart';
import 'package:home_app/library.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((a) {
      context.onReplacement(const LaunchScreen());
    });
    return Scaffold(
      body: Center(
          child: const Image(
                  image: AppImages.imgLogoLight,
                  height: 250,
                  width: 175,
                ).animate().slide(
                  begin: const Offset(5, 5)
                ).scale()
                
                ),
    );
  }
}
