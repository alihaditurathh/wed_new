import 'package:flutter/material.dart';
import 'package:wed_for_weddings/core/common/widgets/admin_app_bar.dart';
import 'package:wed_for_weddings/core/extensions/context_extension.dart';
import 'package:wed_for_weddings/core/language/lang_keys.dart';
import 'package:wed_for_weddings/core/style/colors/colors_dark.dart';
import 'package:wed_for_weddings/features/admin/add_categories/presentation/refactors/add_categories_body.dart';

class AddCategoriesScreen extends StatelessWidget {
  const AddCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorsDark.mainColor,
      appBar: AdminAppBar(
            isMain: true,
          backgroundColor: ColorsDark.mainColor,
          title: context.translate(LangKeys.Categories),
          ),
          body: AddCategoriesBody(),
      
    );
  }
}
