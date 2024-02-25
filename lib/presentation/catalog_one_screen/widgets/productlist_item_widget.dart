import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/custom_icon_button.dart';
import 'package:satyashopping/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class ProductlistItemWidget extends StatelessWidget {
  const ProductlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 114.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 10.v),
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
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 104.adaptSize,
                            width: 104.adaptSize,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage6,
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
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 11.h,
                      top: 10.v,
                      bottom: 15.v,
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
                        Row(
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
                                "(3)",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.v),
                        Text(
                          "51",
                          style: theme.textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomIconButton(
            height: 36.adaptSize,
            width: 36.adaptSize,
            padding: EdgeInsets.all(6.h),
            alignment: Alignment.bottomRight,
            child: CustomImageView(
              imagePath: ImageConstant.imgIcon,
            ),
          ),
        ],
      ),
    );
  }
}
