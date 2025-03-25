import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wed_for_weddings/core/common/widgets/custom_container_linear_admin.dart';
import 'package:wed_for_weddings/core/common/widgets/text_app.dart';
import 'package:wed_for_weddings/core/extensions/context_extension.dart';
import 'package:wed_for_weddings/core/style/fonts/font_family_helper.dart';
import 'package:wed_for_weddings/core/style/fonts/font_weight_helper.dart';

class AddCategoryItem extends StatelessWidget {
  const AddCategoryItem(
      {super.key,
      required this.name,
      required this.image,
      required this.categoryId});
  final String name;
  final String image;
  final String categoryId;
  @override
  Widget build(BuildContext context) {
    return CustomContainerLinearAdmin(
        height: 130.h,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  TextApp(
                    text: name,
                    theme: context.textStyle.copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeightHelper.medium,
                      fontFamily: FontFamilyHelper.poppinsEnglish,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      //Delete
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                        size: 25,
                      ),
                      SizedBox(
                        width: 20.h,
                      ),
                      //update
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.edit,
                          color: Colors.green,
                          size: 25,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
             
                ],
              ),
                       Flexible(
              child: CachedNetworkImage(
                height: 90.h,
                width: 120.w,
                imageUrl: image,
                // fit: BoxFit.fill,
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 70,
                ),
              ),
            ),
            ],
          ),
        ));
  }
}
