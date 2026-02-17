import 'package:delivery_app/component/text/content.dart';
import 'package:delivery_app/core/utils/extension/app_font_weight.dart';
import 'package:delivery_app/core/utils/extension/app_navigation.dart';
import 'package:delivery_app/core/utils/extension/app_text_style.dart';
import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.color,
    required this.title,
    this.fontSize,
  });
  final Color color;
  final String title;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () => context.popPage(),
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: color, size: 16),
        ),
        Content(
          data: title,
          textStyle: context.titleText,
          color: color,
          size: fontSize ?? 24,
          weight: AppFontWeight.regular,
        ),
      ],
    );
  }
}
