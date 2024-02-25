import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Jane Doe", style: theme.textTheme.titleSmall),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Text(
                    "Edit",
                    style: CustomTextStyles.titleSmallPrimary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Container(
            width: 235.h,
            margin: EdgeInsets.only(left: 5.h, right: 57.h),
            child: Text(
              "3 Newbridge Court \r\nChino Hills, CA 91709, United States",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(height: 1.50),
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h, right: 74.h),
            child: Row(
              children: [
                Container(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 3.v),
                  decoration: AppDecoration.fillGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgCheckmark,
                      height: 12.v,
                      width: 15.h,
                      alignment: Alignment.topLeft),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13.h, top: 3.v, bottom: 2.v),
                  child: Text("Use as the shipping address",
                      style: theme.textTheme.bodyMedium),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
