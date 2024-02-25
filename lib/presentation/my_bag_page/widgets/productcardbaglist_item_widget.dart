import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductcardbaglistItemWidget extends StatelessWidget {
  const ProductcardbaglistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 104.v,
      width: 346.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(right: 3.h),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
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
                          imagePath: ImageConstant.imgImage7,
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
                      top: 11.v,
                      bottom: 11.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pullover",
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 4.v),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Row(
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Color:",
                                      style:
                                          CustomTextStyles.bodySmallff9b9b9b11,
                                    ),
                                    TextSpan(
                                      text: " ",
                                    ),
                                    TextSpan(
                                      text: "Black",
                                      style:
                                          CustomTextStyles.bodySmallff22222211,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 13.h),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Size:",
                                        style:
                                            CustomTextStyles.bodySmallff9b9b9b,
                                      ),
                                      TextSpan(
                                        text: " ",
                                      ),
                                      TextSpan(
                                        text: "L",
                                        style:
                                            CustomTextStyles.bodySmallff222222,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 14.v),
                        Container(
                          width: 212.h,
                          margin: EdgeInsets.only(left: 1.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 109.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomIconButton(
                                      height: 36.adaptSize,
                                      width: 36.adaptSize,
                                      padding: EdgeInsets.all(6.h),
                                      decoration: IconButtonStyleHelper
                                          .outlineBlackTL181,
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgIconGray50036x36,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 10.v,
                                        bottom: 11.v,
                                      ),
                                      child: Text(
                                        "1",
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                    CustomIconButton(
                                      height: 36.adaptSize,
                                      width: 36.adaptSize,
                                      padding: EdgeInsets.all(6.h),
                                      decoration: IconButtonStyleHelper
                                          .outlineBlackTL181,
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgIconGray50040x40,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 10.v,
                                  bottom: 11.v,
                                ),
                                child: Text(
                                  "51",
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIcon40x40,
            height: 40.adaptSize,
            width: 40.adaptSize,
            alignment: Alignment.topRight,
          ),
        ],
      ),
    );
  }
}
