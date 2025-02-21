import 'package:flutter/material.dart';
import 'package:wed_for_weddings/core/common/animations/animate_do.dart';
import 'package:wed_for_weddings/core/common/widgets/text_app.dart';
import 'package:wed_for_weddings/core/extensions/context_extension.dart';
import 'package:wed_for_weddings/core/style/fonts/font_weight_helper.dart';

class AuthTitleInfo extends StatelessWidget {
  const AuthTitleInfo({
    required this.description,
    required this.title,
    super.key,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 600,
      child: Column(
        children: [
          // title
          TextApp(
            text: title,
            theme: context.textStyle.copyWith(
              fontSize: 24,
              fontWeight: FontWeightHelper.bold,
              color: context.color.textColor,
            ),
          ),
          const SizedBox(height: 10),
          TextApp(
            text: description,
            theme: context.textStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeightHelper.medium,
              color: context.color.textColor,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
