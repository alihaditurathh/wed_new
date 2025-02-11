import 'package:flutter/material.dart';
import 'package:wed_for_weddings/core/app/connectivity_controller.dart';
import 'package:wed_for_weddings/core/app/env.variables.dart';
import 'package:wed_for_weddings/core/common/screens/no_network_screen.dart';
import 'package:wed_for_weddings/core/routes/app_routes.dart';
import 'package:wed_for_weddings/core/style/fonts/font_family_helper.dart';
import 'package:wed_for_weddings/core/style/fonts/font_weight_helper.dart';

class Wed extends StatelessWidget {
  const Wed({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
    valueListenable: ConnectivityController.instance.isConnected,
        builder: (_, value, __) {
          if (value) {
            return MaterialApp(
              title: 'Wed',
              debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
              theme: ThemeData.light(useMaterial3: true),
              builder: (context, Widget) {
                return Scaffold(
                  body: Builder(
                    builder: (context){
                      ConnectivityController.instance.init();
                      return Widget!;
                    }),
                );
              },
              onGenerateRoute: AppRoutes.onGenerateRoute,
      initialRoute: AppRoutes.testOne,

            );
          } else {
            return MaterialApp(
              title: 'No network',
              debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
              home: const NoNetWorkScreen(),
            );
          }
        }
        ,);
  }
}
