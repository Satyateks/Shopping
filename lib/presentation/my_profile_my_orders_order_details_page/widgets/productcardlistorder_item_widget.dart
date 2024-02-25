import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';

// ignore: must_be_immutable
class ProductcardlistorderItemWidget extends StatelessWidget {
  const ProductcardlistorderItemWidget({Key? key})
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 104.adaptSize,
            width: 104.adaptSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage104x104,
                  height: 104.adaptSize,
                  width: 104.adaptSize,
                  radius: BorderRadius.horizontal(
                    left: Radius.circular(8.h),
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage6,
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
            padding: EdgeInsets.only(
              left: 11.h,
              top: 10.v,
              bottom: 18.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pullover",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 5.v),
                Text(
                  "Mango",
                  style: CustomTextStyles.bodySmall11_1,
                ),
                SizedBox(height: 7.v),
                SizedBox(
                  width: 110.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              text: "Gray",
                              style: CustomTextStyles.bodySmallff22222211,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      RichText(
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
                    ],
                  ),
                ),
                SizedBox(height: 12.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Units:",
                        style: CustomTextStyles.bodySmallff9b9b9b11,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "1",
                        style: CustomTextStyles.bodySmallff22222211,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 72.v,
              right: 15.h,
              bottom: 17.v,
            ),
            child: Text(
              "51",
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
