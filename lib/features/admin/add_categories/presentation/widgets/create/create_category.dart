import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wed_for_weddings/core/common/widgets/custom_button.dart';
import 'package:wed_for_weddings/core/common/widgets/text_app.dart';
import 'package:wed_for_weddings/core/extensions/context_extension.dart';
import 'package:wed_for_weddings/core/language/lang_keys.dart';
import 'package:wed_for_weddings/core/style/fonts/font_family_helper.dart';
import 'package:wed_for_weddings/core/style/fonts/font_weight_helper.dart';

class CreateCategory extends StatelessWidget {
  const CreateCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       TextApp(
        text: context.translate(LangKeys.GetAllCategories),
         theme: context.textStyle.copyWith(
          fontSize: 18.sp,
          fontWeight: FontWeightHelper.medium,
          fontFamily: FontFamilyHelper.poppinsEnglish
         ),
         ),
         CustomButton(
          onPressed: (){},
          backgroundColor: context.color.bluePinkDark,
          lastRadius: 10,
          threeRadius: 10,
           text: context.translate(LangKeys.Add),
            width: 90.w,
             height: 35.w)
      ],
    );
  }
}