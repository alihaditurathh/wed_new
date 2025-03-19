import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeCustomerScreen extends StatelessWidget {
  const HomeCustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text('Home Customer'),
      ),
    );
  }
}