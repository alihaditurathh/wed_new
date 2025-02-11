import 'package:flutter/material.dart';
import 'package:wed_for_weddings/core/extensions/context_extension.dart';
import 'package:wed_for_weddings/core/routes/app_routes.dart';
import 'package:wed_for_weddings/core/style/images/app_images.dart';
import 'package:wed_for_weddings/core/style/images/app_images.dart';
import 'package:wed_for_weddings/core/style/images/app_images.dart';
import 'package:wed_for_weddings/core/style/theme/assets_extension.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(title: Text("one"),),
      body: Center(
        child: Column(
          children: [
            Center(child: TextButton(onPressed: (){
             context.pushName(AppRoutes.testTwo);
            }, 
            child: Text("Go Two Screen",style: TextStyle(color: context.color.mainColor,fontSize: 30),)),),
         Image.asset(context.assets.bigNavBar ?? "")
         
          ],
        ),
      ),
    );
  }
}