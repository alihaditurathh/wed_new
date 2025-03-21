import 'package:flutter/material.dart';
import 'package:wed_for_weddings/core/common/widgets/admin_app_bar.dart';
import 'package:wed_for_weddings/core/style/colors/colors_dark.dart';

class AddNotificationsScreen extends StatelessWidget {
  const AddNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsDark.mainColor,
      appBar: AdminAppBar(
            isMain: true,
          backgroundColor: ColorsDark.mainColor,
          title: 'Notifications'),
      body: const Center(
        child: Text(
          'Notifications screen',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}