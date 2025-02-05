import 'package:flutter/material.dart';

class Wed extends StatelessWidget {
  const Wed({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wed',
      theme: ThemeData.light(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title:const Text('Wed'),
          centerTitle: true,
        ),
        //body: Image.asset('assets/img/no_network.jpg'),
      ),
    );
  }
}
