import 'package:flutter/material.dart';
import 'package:wed_for_weddings/core/common/widgets/admin_app_bar.dart';
import 'package:wed_for_weddings/core/style/colors/colors_dark.dart';

class AddProductsScreen extends StatelessWidget {
  const AddProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsDark.mainColor,
      appBar: AdminAppBar(
            isMain: true,
          backgroundColor: ColorsDark.mainColor,
          title: 'Products'),
      body: const Center(
        child: Text(
          'Products screen',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
