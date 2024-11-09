import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hangry/src/features/wheel/wheel_screen.dart';
import 'package:hangry/src/utils/theme.dart';

void main() {
  runApp(HangryApp());
}

class HangryApp extends StatelessWidget {
  const HangryApp({super.key, });


  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
          textScaler: MediaQuery.textScalerOf(context)
              .clamp(maxScaleFactor: 1.2, minScaleFactor: 1)),
      child: Builder(builder: (context) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Rotta Mobile',
          theme: AppTheme.getTheme(context),
          // initialBinding: RootBinding(),
          // localizationsDelegates: AppLocalizations.localizationsDelegates,
          // supportedLocales: AppLocalizations.supportedLocales,
          home: WheelScreen(),
        );
      }),
    );
  }
}
