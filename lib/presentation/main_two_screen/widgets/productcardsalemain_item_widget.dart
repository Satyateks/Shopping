import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/custom_icon_button.dart';
import 'package:satyashopping/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class ProductcardsalemainItemWidget extends StatelessWidget {
  const ProductcardsalemainItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 149.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 3.v),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 205.v,
              width: 149.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: 184.v,
                      width: 148.h,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage2184x148,
                            height: 184.v,
                            width: 148.h,
                            radius: BorderRadius.circular(
                              8.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 40.h,
                              margin: EdgeInsets.only(
                                left: 9.h,
                                top: 8.v,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.h,
                                vertical: 6.v,
                              ),
                              decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder12,
                              ),
                              child: Text(
                                "-20% ",
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
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
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: CustomIconButton(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      alignment: Alignment.bottomRight,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIcon,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 6.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text(
                "Dorothy Perkins",
                style: CustomTextStyles.bodySmall11,
              ),
            ),
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text(
                "Evening Dress",
                style: theme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                children: [
                  SizedBox(
                    height: 14.v,
                    width: 23.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 1.v,
                            width: 23.h,
                            decoration: BoxDecoration(
                              color: appTheme.gray500,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "15",
                            style: CustomTextStyles.titleSmallGray500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "12",
                      style: CustomTextStyles.titleSmallPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
