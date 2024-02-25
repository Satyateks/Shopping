import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class ReviewwithphotoslistItemWidget extends StatelessWidget {
  const ReviewwithphotoslistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 373.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(left: 16.h),
              padding: EdgeInsets.symmetric(vertical: 15.v),
              decoration: AppDecoration.outlineBlack9001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Text(
                        "Kim Shine",
                        style: CustomTextStyles.titleSmallSemiBold,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 23.h,
                        right: 18.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: CustomRatingBar(
                              ignoreGestures: true,
                              initialRating: 0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4.v),
                            child: Text(
                              "August 13, 2019",
                              style: CustomTextStyles.bodySmall11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  SizedBox(
                    height: 240.v,
                    width: 289.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Opacity(
                            opacity: 0.8,
                            child: Container(
                              width: 260.h,
                              margin: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "I loved this dress so much as soon as I tried it on I knew I had to buy it in another color. I am 5'3 about 155lbs and I carry all my weight in my upper body. When I put it on I felt like it thinned me put and I got so many compliments.",
                                maxLines: 7,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    CustomTextStyles.bodyMediumGray900.copyWith(
                                  height: 1.50,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: EdgeInsets.only(top: 136.v),
                            decoration: AppDecoration.fillOnPrimary,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage2104x104,
                                  height: 104.adaptSize,
                                  width: 104.adaptSize,
                                  radius: BorderRadius.circular(
                                    4.h,
                                  ),
                                  margin: EdgeInsets.only(left: 2.h),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage12,
                                  height: 104.adaptSize,
                                  width: 104.adaptSize,
                                  radius: BorderRadius.circular(
                                    4.h,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage104x47,
                                  height: 104.v,
                                  width: 47.h,
                                  radius: BorderRadius.circular(
                                    4.h,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(right: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10.v,
                            bottom: 1.v,
                          ),
                          child: Text(
                            "Helpful",
                            style: CustomTextStyles.bodySmall11,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgIconGray500,
                          height: 22.v,
                          width: 24.h,
                          margin: EdgeInsets.only(left: 3.h),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              height: 32.adaptSize,
              width: 32.adaptSize,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage32x32,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    radius: BorderRadius.circular(
                      16.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage232x32,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    radius: BorderRadius.circular(
                      16.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
