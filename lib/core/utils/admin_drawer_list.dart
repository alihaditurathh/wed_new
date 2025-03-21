// List<DrawerItemModel>


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wed_for_weddings/core/common/dialogs/custom_dialogs.dart';
import 'package:wed_for_weddings/core/common/widgets/text_app.dart';
import 'package:wed_for_weddings/core/extensions/context_extension.dart';
import 'package:wed_for_weddings/core/language/lang_keys.dart';
import 'package:wed_for_weddings/core/style/fonts/font_family_helper.dart';
import 'package:wed_for_weddings/core/style/fonts/font_weight_helper.dart';
import 'package:wed_for_weddings/core/utils/app_logout.dart';
import 'package:wed_for_weddings/features/admin/add_categories/presentation/screens/add_categories_screen.dart';
import 'package:wed_for_weddings/features/admin/add_notifications/presentation/screens/add_notifications_screen.dart';
import 'package:wed_for_weddings/features/admin/add_products/presentation/screens/add_products_screen.dart';
import 'package:wed_for_weddings/features/admin/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:wed_for_weddings/features/admin/users/presentation/screens/users_screen.dart';

List<DrawerItemModel> adminDrawerList(BuildContext context) {
  return <DrawerItemModel>[
    //DashBoard
    DrawerItemModel(
      icon: const Icon(
        Icons.dashboard,
        color: Colors.white,
      ),
      title: TextApp(
        text:  context.translate(LangKeys.DashBoard),
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page: const DashBoardScreen(),
    ),
    //Categories
    DrawerItemModel(
      icon: const Icon(Icons.category_outlined, color: Colors.white),
      title: TextApp(
        text:  context.translate(LangKeys.Categories),
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page: const AddCategoriesScreen(),
    ),
    //Product
    DrawerItemModel(
      icon: const Icon(
        Icons.production_quantity_limits,
        color: Colors.white,
      ),
      title: TextApp(
        text:  context.translate(LangKeys.Products),
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page: const AddProductsScreen(),
    ),
    //Users
    DrawerItemModel(
      icon: const Icon(
        Icons.people_alt_rounded,
        color: Colors.white,
      ),
      title: TextApp(
        text:  context.translate(LangKeys.Users),
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page: const UsersScreen(),
    ),
    //Notifications
    DrawerItemModel(
      icon: const Icon(
        Icons.notifications_active,
        color: Colors.white,
      ),
      title: TextApp(
        text:  context.translate(LangKeys.notifications),
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page: const AddNotificationsScreen(),
    ),
    //LogOut
    DrawerItemModel(
      icon: const Icon(
        Icons.exit_to_app,
        color: Colors.white,
      ),
      title: GestureDetector(
        onTap: () {
        CustomDialog.twoButtonDialog(
            context: context,
            textBody:  context.translate(LangKeys.logOutFromApp),
            textButton1:  context.translate(LangKeys.yes),
            textButton2:  context.translate(LangKeys.no),
            isLoading: false,
            onPressed: () async {
              await AppLogout().logout();
            },
          );
        },
        child:  Text(
           context.translate(LangKeys.logOut),
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeightHelper.bold,
            fontSize: 17,
          ),
        ),
      ),
      page: const UsersScreen(),
    ),
  ];
}

class DrawerItemModel {
  DrawerItemModel({
    required this.icon,
    required this.title,
    required this.page,
  });

  final Icon icon;
  final Widget title;
  final Widget page;
}
