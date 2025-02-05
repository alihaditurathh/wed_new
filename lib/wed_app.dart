import 'package:flutter/material.dart';
import 'package:wed_for_weddings/core/app/env.variables.dart';

class Wed extends StatelessWidget {
  const Wed({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wed',
        debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
      theme: ThemeData.light(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title:const Text('Wed'),
          centerTitle: true,
        ),
        //body: Image.asset('assets/img/no_network.jpg'),
      ),
    );
  }
}
