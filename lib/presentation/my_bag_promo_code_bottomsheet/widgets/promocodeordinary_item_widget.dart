import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class PromocodeordinaryItemWidget extends StatelessWidget {
  const PromocodeordinaryItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack9003.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          Container(
            width: 80.h,
            padding: EdgeInsets.symmetric(
              horizontal: 9.h,
              vertical: 21.v,
            ),
            decoration: AppDecoration.gradientRedToRedA.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: Text(
                    "10",
                    style: CustomTextStyles.displaySmallOnPrimary_1,
                  ),
                ),
                Container(
                  height: 27.v,
                  width: 20.h,
                  margin: EdgeInsets.only(
                    top: 2.v,
                    right: 1.h,
                    bottom: 6.v,
                  ),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          " off",
                          style: CustomTextStyles.titleSmallOnPrimaryBold,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "%",
                          style: CustomTextStyles.titleSmallOnPrimaryBold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 23.v,
              bottom: 23.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Personal offer",
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 8.v),
                Text(
                  "mypromocode2020",
                  style: CustomTextStyles.bodySmallGray900,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              right: 14.h,
              bottom: 11.v,
            ),
            child: Column(
              children: [
                Text(
                  "6 days remaining",
                  style: CustomTextStyles.bodySmall11,
                ),
                SizedBox(height: 9.v),
                _buildApplyButtonText(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildApplyButtonText(BuildContext context) {
    return CustomElevatedButton(
      height: 36.v,
      width: 93.h,
      text: "Apply",
      buttonStyle: CustomButtonStyles.outlineRedFTL18,
    );
  }
}
