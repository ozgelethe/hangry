import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension ContextExtension on BuildContext {
  ThemeData get currentTheme => Theme.of(this);
  MediaQueryData get deviceInfo => MediaQuery.of(this);
  double get appContainerWidth {
    double screenWidth = MediaQuery.of(this).size.width;

    if (kIsWeb) {
      screenWidth = screenWidth * 0.65;
    }

    return screenWidth;
  }

  void toPage(Widget targetPage) {
    Get.to(
      targetPage,
      transition: Transition.rightToLeft, // Sayfa geçiş animasyonu
      duration: const Duration(milliseconds: 500), // Animasyon süresi
    );
  }

  void toPageAndRemoveUntil(Widget targetPage) {
    Get.offAll(() => targetPage);
  }

  void showErrorMessage(String message, BuildContext context) {
    double marginTop = deviceInfo.size.height * 0.4;
    double snackbarWidth = deviceInfo.size.width * 0.95;

    Get.snackbar(
      'sorry, cant do baby',
      '',
      colorText: Colors.red,
      duration: const Duration(seconds: 3),
      shouldIconPulse: false,
      icon: const Icon(Icons.warning, color: Colors.red),
      backgroundColor: const Color(0xFFF2F2F7),
      margin: EdgeInsets.only(top: marginTop),
      maxWidth: snackbarWidth,
      messageText: Text(
        message,
        style: context.theme.textTheme.bodyMedium!.copyWith(
          color: Colors.red,
          height: 0,
        ),
      ),
    );
  }

}
