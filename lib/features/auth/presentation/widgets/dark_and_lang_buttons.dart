import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wed_for_weddings/core/app/app_cubit/app_cubit.dart';
import 'package:wed_for_weddings/core/common/animations/animate_do.dart';
import 'package:wed_for_weddings/core/common/widgets/custom_linear_button.dart';
import 'package:wed_for_weddings/core/common/widgets/text_app.dart';
import 'package:wed_for_weddings/core/extensions/context_extension.dart';
import 'package:wed_for_weddings/core/language/app_localizations.dart';
import 'package:wed_for_weddings/core/language/lang_keys.dart';

class DarkAndLangButtons extends StatelessWidget {
  const DarkAndLangButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final Cubit = context.read<AppCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //dark mode button
        BlocBuilder(
          bloc: Cubit,
          builder: (context, state) {
            return CustomFadeInRight(
              duration: 600,
              child: CustomLinearButton(
                onPressed: Cubit.changeAppThemeMode,
                child: Icon(
                  Cubit.isDark
                      ? Icons.light_mode_rounded
                      : Icons.dark_mode_rounded,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
        //language button
        CustomFadeInLeft(
          duration: 600,
          child: CustomLinearButton(
            onPressed: () {
                 if (AppLocalizations.of(context)!.isEnLocale) {
                Cubit.toArabic();
              } else {
                Cubit.toEnglish();
              }
            },
            height: 44,
            width: 100,
            child: TextApp(
              text: context.translate(LangKeys.language),
              theme: context.textStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
