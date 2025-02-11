import 'package:flutter/material.dart';
import 'package:wed_for_weddings/core/extensions/context_extension.dart';
import 'package:wed_for_weddings/core/routes/app_routes.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(title: Text("one"),),
      body: Center(child: TextButton(onPressed: (){
       context.pushName(AppRoutes.testTwo);
      }, 
      child: Text("Go Two Screen",style: TextStyle(color: Colors.white),)),),
    );
  }
}