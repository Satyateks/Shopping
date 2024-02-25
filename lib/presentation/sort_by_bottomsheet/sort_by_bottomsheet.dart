import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SortByBottomsheet extends StatelessWidget {
  const SortByBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: AppDecoration.background.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL34,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 60.h,
              child: Divider(
                color: appTheme.gray500,
              ),
            ),
          ),
          SizedBox(height: 18.v),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Sort by",
              style: CustomTextStyles.titleMedium18,
            ),
          ),
          SizedBox(height: 35.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "Popular",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 30.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "Newest",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 31.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "Customer review",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 17.v),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Text(
              "Price: lowest to high",
              style: CustomTextStyles.titleMediumOnPrimary,
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "Price: highest to low",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 38.v),
        ],
      ),
    );
  }
}
