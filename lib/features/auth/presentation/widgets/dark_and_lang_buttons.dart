import 'package:flutter/material.dart';
import 'package:wed_for_weddings/core/common/animations/animate_do.dart';
import 'package:wed_for_weddings/core/common/widgets/custom_linear_button.dart';
import 'package:wed_for_weddings/core/common/widgets/text_app.dart';
import 'package:wed_for_weddings/core/extensions/context_extension.dart';
import 'package:wed_for_weddings/core/language/lang_keys.dart';

class DarkAndLangButtons extends StatelessWidget {
  const DarkAndLangButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //dark mode button
        CustomFadeInRight(
          duration: 600,
          child: CustomLinearButton(
            onPressed: (){},
             child:const Icon(Icons.light_mode_rounded,
             color: Colors.white,)),
        ),
        //language button
        CustomFadeInLeft(
          duration: 600,
          child: CustomLinearButton(onPressed:() {
            
          },
          height: 44,
          width: 100,
          child: TextApp(text: context.translate(LangKeys.language), 
          theme:context.textStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold
          ,) ,),),
        ),
      ],
    );
  }
}