import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';

// ignore: must_be_immutable
class CategorycardsectionItemWidget extends StatelessWidget {
  const CategorycardsectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              top: 39.v,
              bottom: 42.v,
            ),
            child: Text(
              "New",
              style: CustomTextStyles.titleMedium18,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage41,
            height: 100.v,
            width: 171.h,
            radius: BorderRadius.horizontal(
              right: Radius.circular(8.h),
            ),
          ),
        ],
      ),
    );
  }
}
