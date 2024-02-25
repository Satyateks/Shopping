import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';

// ignore: must_be_immutable
class TagsItemWidget extends StatelessWidget {
  const TagsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.h,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder15,
      ),
      child: Text(
        "Summer",
        style: CustomTextStyles.titleSmallOnPrimary_1,
      ),
    );
  }
}
