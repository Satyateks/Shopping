import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class Productlist1ItemWidget extends StatelessWidget {
  const Productlist1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 104.adaptSize,
            width: 104.adaptSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage16,
                  height: 104.adaptSize,
                  width: 104.adaptSize,
                  radius: BorderRadius.horizontal(
                    left: Radius.circular(8.h),
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage17,
                  height: 104.adaptSize,
                  width: 104.adaptSize,
                  radius: BorderRadius.horizontal(
                    left: Radius.circular(8.h),
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 14.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "LIME",
                  style: CustomTextStyles.bodySmall11_1,
                ),
                SizedBox(height: 2.v),
                Text(
                  "Shirt",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 6.v),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Color:",
                            style: CustomTextStyles.bodySmallff9b9b9b11,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "Blue",
                            style: CustomTextStyles.bodySmallff22222211,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Size:",
                              style: CustomTextStyles.bodySmallff9b9b9b,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "L",
                              style: CustomTextStyles.bodySmallff222222,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14.v),
                SizedBox(
                  width: 175.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "32",
                        style: theme.textTheme.titleSmall,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomRatingBar(
                            ignoreGestures: true,
                            initialRating: 0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 2.h,
                              top: 3.v,
                            ),
                            child: Text(
                              "(10)",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIconGray50040x40,
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(bottom: 64.v),
          ),
        ],
      ),
    );
  }
}
