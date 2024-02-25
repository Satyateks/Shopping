import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/custom_icon_button.dart';
import 'package:satyashopping/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  const ProductcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 205.v,
            width: 162.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
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
                          "(3)",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 200.v,
                    width: 162.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage184x162,
                          height: 184.v,
                          width: 162.h,
                          radius: BorderRadius.circular(
                            8.h,
                          ),
                          alignment: Alignment.topCenter,
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
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Text(
            "Mango",
            style: CustomTextStyles.bodySmall11,
          ),
          SizedBox(height: 3.v),
          Text(
            "T-Shirt SPANISH",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 5.v),
          Text(
            "9",
            style: theme.textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
