import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wed_for_weddings/core/common/widgets/admin_app_bar.dart';
import 'package:wed_for_weddings/core/di/injection_container.dart';
import 'package:wed_for_weddings/core/extensions/context_extension.dart';
import 'package:wed_for_weddings/core/language/lang_keys.dart';
import 'package:wed_for_weddings/core/style/colors/colors_dark.dart';
import 'package:wed_for_weddings/features/admin/dashboard/presentation/bloc/categories_number/categories_number_bloc.dart';
import 'package:wed_for_weddings/features/admin/dashboard/presentation/bloc/products_number/products_number_bloc.dart';
import 'package:wed_for_weddings/features/admin/dashboard/presentation/bloc/users_number/users_number_bloc.dart';
import 'package:wed_for_weddings/features/admin/dashboard/presentation/refactors/dashboard_body.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<ProductsNumberBloc>()
            ..add(const ProductsNumberEvent.getProductsNumber()),
        ),
         BlocProvider(
          create: (context) => sl<CategoriesNumberBloc>()
            ..add(const CategoriesNumberEvent.getCategoriesNumber()),
        ),
         BlocProvider(
          create: (context) => sl<UsersNumberBloc>()
            ..add(const UsersNumberEvent.getUsersNumber()),
        ),
      ],
      child: Scaffold(
        backgroundColor: context.color.mainColor,
        appBar: AdminAppBar(
            isMain: true,
            backgroundColor: ColorsDark.mainColor,
            title: context.translate(LangKeys.DashBoard)),
        body: const Center(
          child: DashboardBody(),
        ),
      ),
    );
  }
}
