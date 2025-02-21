import 'package:flutter/material.dart';
import 'package:wed_for_weddings/core/common/animations/animate_do.dart';
import 'package:wed_for_weddings/core/common/widgets/text_app.dart';
import 'package:wed_for_weddings/core/extensions/context_extension.dart';
import 'package:wed_for_weddings/core/language/lang_keys.dart';
import 'package:wed_for_weddings/core/routes/app_routes.dart';
import 'package:wed_for_weddings/core/style/fonts/font_weight_helper.dart';
import 'package:wed_for_weddings/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:wed_for_weddings/features/auth/presentation/widgets/dark_and_lang_buttons.dart';
import 'package:wed_for_weddings/features/auth/presentation/widgets/sign_up/sign_up_button.dart';
import 'package:wed_for_weddings/features/auth/presentation/widgets/sign_up/sign_up_text_form.dart';
import 'package:wed_for_weddings/features/auth/presentation/widgets/sign_up/user_avatar_image.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

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
            const SizedBox(height: 10),
            // Welcome Info
            AuthTitleInfo(
              title: context.translate(LangKeys.signUp),
              description: context.translate(LangKeys.signUpWelcome),
            ),
            const SizedBox(height: 6),
            //user avatar image
            const UserAvatarImage(),
            const SizedBox(height: 5),
            // signup TextForm
            const SignUpTextForm(),
            const SizedBox(height: 5),
            // signup button
              const SignUpButton(),
            //const SizedBox(height: 0),
            // Go To login Screen
            CustomFadeInDown(
              duration: 600,
              child: TextButton(
                onPressed: () {
                  context.pushReplacementNamed(AppRoutes.login);
                },
                child: TextApp(
                  text: context.translate(LangKeys.youHaveAccount),
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
