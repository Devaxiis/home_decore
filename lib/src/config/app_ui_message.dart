import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:home_app/library.dart';

class AppUiMessage {
  

  static void UiToastError(BuildContext context,{required String message}) {
    CherryToast.error(
        description: Text(message,
            style: const TextStyle(color: AppColors.clF4B5A4Salmon)),
        animationType: AnimationType.fromTop,
        animationDuration: const Duration(milliseconds: 1000),
        autoDismiss: true).show(context);
  }
  static void UiToastSuccess(BuildContext context,{required String message}) {
    CherryToast.success(
        description: Text(message,
            style: const TextStyle(color: AppColors.clF4B5A4Salmon)),
        animationType: AnimationType.fromTop,
        animationDuration: const Duration(milliseconds: 1000),
        autoDismiss: true).show(context);
  }
  static void UiToastWarning(BuildContext context,{required String message}) {
    CherryToast.warning(
        description: Text(message,
            style: const TextStyle(color: AppColors.clF4B5A4Salmon)),
        animationType: AnimationType.fromTop,
        animationDuration: const Duration(milliseconds: 1000),
        autoDismiss: true).show(context);
  }
  static void UiToastInfo(BuildContext context,{required String message}) {
    CherryToast.info(
        description: Text(message,
            style: const TextStyle(color: AppColors.clF4B5A4Salmon)),
        animationType: AnimationType.fromTop,
        animationDuration: const Duration(milliseconds: 1000),
        autoDismiss: true).show(context);
  }
}
