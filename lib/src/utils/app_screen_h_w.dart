import 'package:home_app/library.dart';

extension HW on BuildContext {
  double phoneHeight() {
    return MediaQuery.sizeOf(this).height;
  }

  double phoneWidth() {
   return MediaQuery.sizeOf(this).width;
  }
}
