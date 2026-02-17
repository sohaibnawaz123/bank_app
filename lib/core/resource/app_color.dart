import 'package:flutter/material.dart';

class AppColor {
  AppColor._internal();
  static final AppColor _instance = AppColor._internal();

  factory AppColor() {
    return _instance;
  }

  // Base
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF343434);
  static const Color transparent = Color(0x00000000);
  static const Color base = Color(0xFFF2F1F9);

  // Primary Palette
  static const Color primary = Color(0xFF281C9D);
  static const Color grey = Color(0xFF898989);
  static const Color highlight = Color(0xFFA8A3D7);
  static Color get highlightdark => const Color(0xFF5655B9);

  // >>>>>>>>>>>>>>>>>>>>>>> Text <<<<<<<<<<<<<<<<<<<<<<<

  static const Color primaryText = Color(0xFF343434);
  static const Color secondaryText = Color(0xFF898989);
  static const Color headingText = Color(0xFF5655B9);
  static const Color highlightText = Color(0xFF281C9D);
  static const Color baseText = Color(0xFF989898);

  static const Color disabledText = Color(0xFFCACACA);
  static const Color errorText = Color(0xFFFF4267);
  static const Color border = Color(0xFFCBCBCB);

  // Semantic (kept gradient but aligned with blue semantic color)
  static const Gradient iconBgGradient = LinearGradient(
    colors: [Color(0xFF0890FE), Color(0xFF5655B9)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Optional semantic helpers (same names not changed — just extras if needed)
  static const Color info = Color(0xFF0890FE);
  static const Color warning = Color(0xFFFFAF2A);
  static const Color success = Color(0xFF52D5BA);
  static const Color accent = Color(0xFFFB6B18);
}
