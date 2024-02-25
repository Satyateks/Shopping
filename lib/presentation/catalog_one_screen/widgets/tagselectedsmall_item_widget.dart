import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';

// ignore: must_be_immutable
class TagselectedsmallItemWidget extends StatelessWidget {
  const TagselectedsmallItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.h,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 100.h,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder15,
          ),
          child: Text(
            "T-shirts",
            style: CustomTextStyles.titleSmallOnPrimary_1,
          ),
        ),
      ),
    );
  }
}
