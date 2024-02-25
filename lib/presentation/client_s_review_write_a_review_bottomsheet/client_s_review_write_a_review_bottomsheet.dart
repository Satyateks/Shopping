import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/custom_elevated_button.dart';
import 'package:satyashopping/widgets/custom_icon_button.dart';
import 'package:satyashopping/widgets/custom_rating_bar.dart';
import 'package:satyashopping/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ClientSReviewWriteAReviewBottomsheet extends StatelessWidget {
  ClientSReviewWriteAReviewBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController reviewQuestionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.background.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL34,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 60.h,
            child: Divider(
              color: appTheme.gray500,
            ),
          ),
          SizedBox(height: 18.v),
          Text(
            "What is you rate?",
            style: CustomTextStyles.titleMedium18,
          ),
          SizedBox(height: 18.v),
          CustomRatingBar(
            initialRating: 0,
            itemSize: 37,
          ),
          SizedBox(height: 32.v),
          SizedBox(
            width: 227.h,
            child: Text(
              "Please share your opinion\nabout the product",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMedium18.copyWith(
                height: 1.22,
              ),
            ),
          ),
          SizedBox(height: 17.v),
          CustomTextFormField(
            controller: reviewQuestionController,
            hintText: "Your review",
            hintStyle: CustomTextStyles.bodyMediumGray500,
            textInputAction: TextInputAction.done,
            maxLines: 10,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 15.v,
            ),
          ),
          SizedBox(height: 39.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(right: 239.h),
              padding: EdgeInsets.symmetric(
                horizontal: 6.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.outlineBlack9001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomIconButton(
                    height: 52.adaptSize,
                    width: 52.adaptSize,
                    padding: EdgeInsets.all(13.h),
                    decoration: IconButtonStyleHelper.fillPrimary,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgBaselinePhotoCamera24px,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "Add your photos",
                    style: CustomTextStyles.labelMediumGray900,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 44.v),
          CustomElevatedButton(
            text: "SEND REVIEW",
          ),
          SizedBox(height: 30.v),
        ],
      ),
    );
  }
}
