import 'package:flutter/material.dart';
import 'package:wed_for_weddings/core/common/animations/animate_do.dart';
import 'package:wed_for_weddings/core/utils/image_pick.dart';

class UserAvatarImage extends StatelessWidget {
  const UserAvatarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        PickImageUtils().pickImage();
      },
      child: CustomFadeInDown(
        duration: 600,
        child: CircleAvatar(
          radius: 38,
          backgroundImage:AssetImage('assets/images/customer/user.png') ,
        ),),
    );
  }
}