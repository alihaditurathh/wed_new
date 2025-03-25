import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wed_for_weddings/features/admin/add_categories/presentation/widgets/add_category_item.dart';
import 'package:wed_for_weddings/features/admin/add_categories/presentation/widgets/create/create_category.dart';

class AddCategoriesBody extends StatelessWidget {
  const AddCategoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w,vertical: 30.h),
      child: Column(
        children: [
          //Create Category Button
          CreateCategory(),
          SizedBox(height: 15,),
          //categories item list
          AddCategoryItem(
            name: 'mybook',
            categoryId: '1',
            image: 'https://www.arabiaweddings.com/sites/default/files/styles/max980/public/articles/2023/04/marrakech_wedding_venue_1_12.jpg?itok=aSsVsFwE',

          )
        ],
      ),
      );
  }
}