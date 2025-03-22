import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wed_for_weddings/core/common/widgets/text_app.dart';
import 'package:wed_for_weddings/core/extensions/context_extension.dart';
import 'package:wed_for_weddings/core/language/lang_keys.dart';
import 'package:wed_for_weddings/core/style/images/app_images.dart';
import 'package:wed_for_weddings/features/admin/dashboard/presentation/bloc/categories_number/categories_number_bloc.dart';
import 'package:wed_for_weddings/features/admin/dashboard/presentation/bloc/products_number/products_number_bloc.dart';
import 'package:wed_for_weddings/features/admin/dashboard/presentation/bloc/users_number/users_number_bloc.dart';
import 'package:wed_for_weddings/features/admin/dashboard/presentation/widgets/dashboard_container.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      child: RefreshIndicator(
          onRefresh: () async {
 //           context
   //                     .read<ProductsNumberBloc>()
     //               .add(const ProductsNumberEvent.getProductsNumber());
       //         context
         //         .read<CategoriesNumberBloc>()
           //     .add(const CategoriesNumberEvent.getCategoriesNumber());
             //      context
               //      .read<UsersNumberBloc>()
                 //  .add(const UsersNumberEvent.getUsersNumber());
          },
          child: ListView(
            children: [
              //Products
             DashBoardContiner(
              title: context.translate(LangKeys.Products,),
               number: '0',
                image: AppImages.productsDrawer,
                 isLoading: false),
                 SizedBox(height: 20.h,),
                    //Cateories
             DashBoardContiner(
              title: context.translate(LangKeys.Categories),
               number: '0',
                image: AppImages.categoriesDrawer,
                 isLoading: false),
                 SizedBox(height: 20.h,),
                    //Users
             DashBoardContiner(
              title: context.translate(LangKeys.Users),
               number: '0',
                image: AppImages.usersDrawer,
                 isLoading: false),
            ],
          )
          ),
    );
  }
}
