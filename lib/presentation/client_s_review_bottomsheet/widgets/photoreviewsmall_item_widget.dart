import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';

// ignore: must_be_immutable
class PhotoreviewsmallItemWidget extends StatelessWidget {
  const PhotoreviewsmallItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 104.adaptSize,
      width: 104.adaptSize,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage14,
            height: 104.adaptSize,
            width: 104.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIconGray900,
            height: 32.v,
            width: 33.h,
            alignment: Alignment.topRight,
          ),
        ],
      ),
    );
  }
}
