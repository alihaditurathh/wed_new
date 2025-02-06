
import 'package:flutter/material.dart';
import 'package:wed_for_weddings/core/images/app_images.dart';

class NoNetWorkScreen extends StatelessWidget {
  const NoNetWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.noNetwork,),
            ),
          ),
          child:const Padding(
            padding:  EdgeInsets.only(top: 100,left: 65),
            child: Text('There is a problem with the Internet'),
          ),
        ),
        
      ),
    );
  }
}
