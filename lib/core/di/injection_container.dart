import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:wed_for_weddings/core/app/app_cubit/app_cubit.dart';
import 'package:wed_for_weddings/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:wed_for_weddings/core/app/upload_image/data_source/upload_image_data_source.dart';
import 'package:wed_for_weddings/core/app/upload_image/repo/upload_image_repo.dart';
import 'package:wed_for_weddings/core/service/graphql/api_service.dart';
import 'package:wed_for_weddings/core/service/graphql/dio_factory.dart';
import 'package:wed_for_weddings/features/admin/dashboard/data/data_soruce/dashboard_data_source.dart';
import 'package:wed_for_weddings/features/admin/dashboard/data/repos/dashboard_repo.dart';
import 'package:wed_for_weddings/features/admin/dashboard/presentation/bloc/categories_number/categories_number_bloc.dart';
import 'package:wed_for_weddings/features/admin/dashboard/presentation/bloc/products_number/products_number_bloc.dart';
import 'package:wed_for_weddings/features/admin/dashboard/presentation/bloc/users_number/users_number_bloc.dart';
import 'package:wed_for_weddings/features/auth/data/data_source/auth_data_source.dart';
import 'package:wed_for_weddings/features/auth/data/repos/auth_repo.dart';
import 'package:wed_for_weddings/features/auth/presentation/bloc/auth_bloc.dart';

final sl = GetIt.instance;
Future<void> setupInjector()async{
 await _initCore();
 await _initAuth();
 await _initDashboard();
}



Future<void> _initCore() async{ 
  final dio = DioFactory.getDio();
    final navigatorKey = GlobalKey<NavigatorState>();
  sl
  ..registerFactory(AppCubit.new)
  ..registerLazySingleton<ApiService>(() => ApiService(dio))
   ..registerSingleton<GlobalKey<NavigatorState>>(navigatorKey)
   ..registerFactory(()=> UploadImageCubit(sl()))
    ..registerLazySingleton(()=> UploadImageRepo(sl()))
     ..registerFactory(()=> UploadImageDataSource(sl()));
   }

Future<void> _initAuth() async{ 
 sl
    ..registerFactory(() => AuthBloc(sl()))
    ..registerLazySingleton(() => AuthRepos(sl()))
    ..registerLazySingleton(() => AuthDataSource(sl()));
  }
  Future<void> _initDashboard() async{
sl
..registerLazySingleton(() => DashBoardDataSource(sl()))
..registerLazySingleton(() => DashBoardRepo(sl()))
..registerFactory(()=> ProductsNumberBloc(sl()))
..registerFactory(()=> CategoriesNumberBloc(sl()))
..registerFactory(()=>UsersNumberBloc(sl()));
}
