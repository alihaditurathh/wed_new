import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeAdminScreen extends StatelessWidget {
  const HomeAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text('Home Admin'),
      ),
    );
  }
}