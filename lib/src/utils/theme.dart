import 'package:flutter/material.dart';
import 'package:hangry/src/utils/contex.extentions.dart';

class AppTheme {
  static ThemeData appTheme(BuildContext context) {
    return ThemeData(
        fontFamily: '',
        colorScheme: colorScheme(),
        textTheme: customTextTheme,
        textSelectionTheme: const TextSelectionThemeData(
          selectionHandleColor: Colors.transparent,
        ),
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(
                color: context.currentTheme.colorScheme.secondary)),
        brightness:
            Brightness.light, // only light theme is available at the moment
        scaffoldBackgroundColor: Colors.transparent,
        cardColor: colorScheme().background,
        iconTheme:
            IconThemeData(color: context.currentTheme.colorScheme.secondary),
        buttonTheme: ButtonThemeData(
            buttonColor: context.currentTheme.colorScheme.primary),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                foregroundColor: context.currentTheme.colorScheme.onPrimary,
                backgroundColor: context.currentTheme.colorScheme.primary)),
        tabBarTheme: TabBarTheme(
            indicatorSize: TabBarIndicatorSize.tab,
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            unselectedLabelColor: const Color(0xFFE8E8E8),
            labelColor: Colors.black),
        bottomAppBarTheme: const BottomAppBarTheme(
            color: Color(0xFFE5E5E5), surfaceTintColor: Color(0xFFE5E5E5)),
        dividerTheme: const DividerThemeData(color: Color(0xFF006699)));
  }

  static ThemeData getTheme(BuildContext context) {
    return appTheme(context);
  }
}

const TextTheme customTextTheme = TextTheme(
  headlineLarge: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    height: 0.06,
  ),
  headlineMedium: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    height: 0.07,
  ),
  bodyLarge: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 0.09,
  ),
  bodyMedium: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 0.11,
  ),
  bodySmall: TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    height: 0.12,
  ),
  labelLarge: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 0.11,
  ),
  labelMedium: TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    height: 0.15,
  ),
);

ColorScheme colorScheme() {
  return const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF004466),
    secondary: Color.fromARGB(255, 58, 56, 56),
    tertiary: Color(0xFF0071A4),
    surface: Color(0xFF5C5C5C),
    background: Color(0xFFF1F1F1),
    error: Color(0xFFBC0404),
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Color(0xFF353535),
    onError: Colors.white,
    onBackground: Color(0xFF353535),
    primaryContainer: Color(0xFF8D9EA5),
    secondaryContainer: Color(0xFFDDE9EE),
    onTertiary: Color(0xFF334248),
    tertiaryContainer: Color(0xFF52C0DA),
    onSurfaceVariant: Color(0xFF9BCA43),
    onInverseSurface: Color(0xFF75858C),
    onPrimaryContainer: Color(0xFF404040),
    onSecondaryContainer: Color(0xFF004466),
    onTertiaryContainer: Color(0xFFFF9500),
    outline: Color(0xFF334248),
    outlineVariant: Color(0xFF0071A4),
  );
}

extension CustomColorScheme on ColorScheme {
  Color get actionIconColor => const Color(0xFF008299);
}
