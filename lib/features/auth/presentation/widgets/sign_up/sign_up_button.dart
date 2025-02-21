import 'package:flutter/material.dart';
import 'package:wed_for_weddings/core/common/animations/animate_do.dart';
import 'package:wed_for_weddings/core/common/widgets/custom_linear_button.dart';
import 'package:wed_for_weddings/core/common/widgets/text_app.dart';
import 'package:wed_for_weddings/core/extensions/context_extension.dart';
import 'package:wed_for_weddings/core/language/lang_keys.dart';
import 'package:wed_for_weddings/core/style/fonts/font_weight_helper.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
     return CustomFadeInRight(
      duration: 600,
      child: CustomLinearButton(
        onPressed: () {},
        height: 40,
        width: MediaQuery.of(context).size.width,
        child: TextApp(
          text: context.translate(LangKeys.signUp),
          theme: context.textStyle
              .copyWith(fontSize: 18, fontWeight: FontWeightHelper.bold),
        ),
      ),
    );
  }
}
