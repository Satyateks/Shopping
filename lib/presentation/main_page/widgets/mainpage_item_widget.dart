import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';

// ignore: must_be_immutable
class MainpageItemWidget extends StatelessWidget {
  const MainpageItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 148.h,
      child: Align(
        alignment: Alignment.center,
        child: CustomImageView(
          imagePath: ImageConstant.imgImage184x148,
          height: 184.v,
          width: 148.h,
          radius: BorderRadius.circular(
            4.h,
          ),
          margin: EdgeInsets.only(bottom: 82.v),
        ),
      ),
    );
  }
}
