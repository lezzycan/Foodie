// /// How to use app colorScheme:
// /// If you are assigning a color property to a widget that has it's color value as a member of the colors in the app theme,
// /// you should assign the color as so => 'color: Theme.of(context).colorScheme.colorNameAccordingToTheme' e.g Theme.of(context).colorScheme.background

// /// How to use app theme:
// /// In your main.dart file, inside the MaterialApp() method, you should assign the theme parameter as so => 'theme: FHhemeManager.lightTheme

// ///  How to use app textTheme:
// /// If you are assigning a textStyle property to a text widget that has it's style values as a member of the textStyles in the app theme,
import 'package:flutter/material.dart';
import 'package:foodhub/core/constants/fh_colors.dart';
import 'package:google_fonts/google_fonts.dart';

/// You should assign the textStyle as so => 'textStyle: Theme.of(context).textStyle.textStyleNameAccordingToTheme' e.g Theme.of(context).colorScheme.bodyLarge

class FHThemeManager {
  FHThemeManager._();

  static String get _fontFamily => 'Product Sans';
  static ThemeData lightTheme = _themeData(_lightColorScheme);
  // static ThemeData darkTheme = _themeData(_darkColorScheme);

  static final ColorScheme _lightColorScheme =
      const ColorScheme.light().copyWith(
    primary: FHColors.primarColor,
    onPrimary: Colors.deepOrange,
    background: Colors.white,
    secondary: FHColors.secondaryColor
    // onBackground: FHColors.lonBackgroud,
    // surface: FHColors.lbackground,
    // onSurface: FHColors.ldarkText,
    // error: FHColors.lerror,
    // onError: FHColors.lonError,
    // errorContainer: FHColors.lerrorContainer,
    // onErrorContainer: FHColors.lonErrorContainer,
    // secondary: FHColors.lsuccess,
    // onSecondary: FHColors.lonSuccess,
    // secondaryContainer: FHColors.lsuccessContainer,
    // onSecondaryContainer: FHColors.lonSuccessContainer,
  );

  // static final ColorScheme _darkColorScheme = const ColorScheme.dark().copyWith(
  //     primary: FHColors.dprimary,
  //     onPrimary: FHColors.donPrimary,
  //     background: FHColors.dbackground,
  //     onBackground: FHColors.donBackground,
  //     surface: FHColors.dsurface,
  //     onSurface: FHColors.donSurface,
  //     error: FHColors.derror,
  //     onError: FHColors.donError,
  //     errorContainer: FHColors.donErrorContainer,
  //     secondary: FHColors.dsuccess,
  //     onSecondary: FHColors.donSuccess,
  //     secondaryContainer: FHColors.dsuccessContainer,
  //     onSecondaryContainer: FHColors.donSuccessContainer);

  static ThemeData _themeData(ColorScheme colorScheme) => ThemeData(
        scaffoldBackgroundColor: colorScheme.background,
        colorScheme: colorScheme,
        textTheme: GoogleFonts.montserratTextTheme(_textTheme(colorScheme)),
        iconTheme: _iconTheme(colorScheme),
        fontFamily: _fontFamily,
        appBarTheme: _appBarTheme(colorScheme),
        disabledColor: colorScheme.inverseSurface,
        brightness: colorScheme.brightness,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: colorScheme.background,
        ),
      );

  static TextTheme _textTheme(ColorScheme colorScheme) => TextTheme(
        displayLarge: TextStyle(
            fontSize: 96,
            color: colorScheme.onSurface,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins'),
        displayMedium: TextStyle(
            fontSize: 72,
            color: colorScheme.onSurface,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins'),
        displaySmall: TextStyle(
            fontSize: 56,
            color: colorScheme.onSurface,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins'),
        headlineMedium: TextStyle(
            fontSize: 40,
            color: colorScheme.onSurface,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins'),
        headlineSmall: TextStyle(
            fontSize: 32,
            color: colorScheme.onSurface,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins'),
        titleLarge: TextStyle(
            fontSize: 28,
            color: colorScheme.onSurface,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins'),
        bodyLarge: TextStyle(
            fontSize: 24,
            color: colorScheme.onSurface,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins'),
        bodyMedium: TextStyle(
            fontSize: 20,
            color: colorScheme.onSurface,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins'),
        bodySmall: TextStyle(
            fontSize: 16,
            color: colorScheme.onSurface,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins'),
      );

  static AppBarTheme _appBarTheme(ColorScheme colorScheme) => AppBarTheme(
        backgroundColor: colorScheme.background,
        centerTitle: true,
        iconTheme: _iconTheme(colorScheme),
      );
  static IconThemeData _iconTheme(ColorScheme colorScheme) => IconThemeData(
        color: colorScheme.onSurface,
      );
}
