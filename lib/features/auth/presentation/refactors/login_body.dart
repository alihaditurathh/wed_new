import 'package:flutter/material.dart';
import 'package:wed_for_weddings/core/common/animations/animate_do.dart';
import 'package:wed_for_weddings/core/common/widgets/text_app.dart';
import 'package:wed_for_weddings/core/extensions/context_extension.dart';
import 'package:wed_for_weddings/core/language/lang_keys.dart';
import 'package:wed_for_weddings/core/routes/app_routes.dart';
import 'package:wed_for_weddings/core/style/fonts/font_weight_helper.dart';
import 'package:wed_for_weddings/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:wed_for_weddings/features/auth/presentation/widgets/dark_and_lang_buttons.dart';
import 'package:wed_for_weddings/features/auth/presentation/widgets/login/login_button.dart';
import 'package:wed_for_weddings/features/auth/presentation/widgets/login/login_text_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //dark mode and language
            const DarkAndLangButtons(),
            const SizedBox(height: 50),
            // Welcome Info
            AuthTitleInfo(
              title: context.translate(LangKeys.login),
              description: context.translate(LangKeys.welcome),
            ),
            const SizedBox(height: 30),
            // login TextForm
            const LoginTextForm(),
            const SizedBox(height: 30),
            // login button
            const LoginButton(),
            const SizedBox(height: 30),
                 // Go To Sign Up Screen
            CustomFadeInDown(
              duration: 600,
              child: TextButton(
                onPressed: () {
                //  context.pushReplacementNamed(AppRoutes.signUp);
                },
                child: TextApp(
                  text: context.translate(LangKeys.createAccount),
                  theme: context.textStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeightHelper.bold,
                    color: context.color.bluePinkLight,
                  ),
                ),
              ),
            ),
         ],
        ),
      ),
    );
  }
}
