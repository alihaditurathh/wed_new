import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wed_for_weddings/core/app/app_cubit/app_cubit.dart';
import 'package:wed_for_weddings/core/app/connectivity_controller.dart';
import 'package:wed_for_weddings/core/app/env.variables.dart';
import 'package:wed_for_weddings/core/common/screens/no_network_screen.dart';
import 'package:wed_for_weddings/core/di/injection_container.dart';
import 'package:wed_for_weddings/core/language/app_localizations_setup.dart';
import 'package:wed_for_weddings/core/routes/app_routes.dart';
import 'package:wed_for_weddings/core/service/shared_pref/pref_keys.dart';
import 'package:wed_for_weddings/core/service/shared_pref/shared_pref.dart';
import 'package:wed_for_weddings/core/style/theme/app_theme.dart';

class Wed extends StatelessWidget {
  const Wed({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return BlocProvider(
            create: (context) => sl<AppCubit>()
              ..changeAppThemeMode(
                sharedMode: SharedPref().getBoolean(PrefKeys.themeMode),
              )
              ..getSavedLanguage(),
            child: ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              child: BlocBuilder<AppCubit, AppState>(
                buildWhen: (previous, current) {
                  return previous != current;
                },
                builder: (context, state) {
                  final Cubit = context.read<AppCubit>();
                  return MaterialApp(
                    title: 'Wed',
                    debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
                    theme: Cubit.isDark ? themeLight() : themeDark(),
                    locale: Locale(Cubit.currentLangCode),
                    supportedLocales: AppLocalizationsSetup.supportedLocales,
                    localizationsDelegates:
                        AppLocalizationsSetup.localizationsDelegates,
                    localeResolutionCallback:
                        AppLocalizationsSetup.localeResolutionCallback,
                    builder: (context, Widget) {
                      return GestureDetector(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: Scaffold(
                          body: Builder(
                            builder: (context) {
                              ConnectivityController.instance.init();
                              return Widget!;
                            },
                          ),
                        ),
                      );
                    },
                    navigatorKey: sl<GlobalKey<NavigatorState>>(),
                    onGenerateRoute: AppRoutes.onGenerateRoute,
                    initialRoute: SharedPref()
                                .getString(PrefKeys.accessToken) !=
                            null
                        ? SharedPref().getString(PrefKeys.userRole) != 'admin'
                            ? AppRoutes.homeCustomer
                            : AppRoutes.homeAdmin
                        : AppRoutes.login,
                  );
                },
              ),
            ),
          );
        } else {
          return MaterialApp(
            title: 'No network',
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            home: const NoNetWorkScreen(),
          );
        }
      },
    );
  }
}
