import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/custom_checkbox_button.dart';
import 'package:satyashopping/widgets/custom_elevated_button.dart';
import 'package:satyashopping/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PaymentCardsBottomsheet extends StatelessWidget {
  PaymentCardsBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  bool checkmark = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 15.v,
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
          SizedBox(height: 26.v),
          Text(
            "Add new card",
            style: CustomTextStyles.titleMedium18,
          ),
          SizedBox(height: 21.v),
          CustomTextFormField(
            controller: nameController,
            hintText: "Name on card",
          ),
          SizedBox(height: 20.v),
          _buildCardNumber(context),
          SizedBox(height: 20.v),
          _buildTextFieldOrdinaryFocused(context),
          SizedBox(height: 20.v),
          _buildTextFieldOrdinaryFocused1(context),
          SizedBox(height: 30.v),
          _buildCheckmark(context),
          SizedBox(height: 22.v),
          CustomElevatedButton(
            text: "ADD CARD",
          ),
          SizedBox(height: 34.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCardNumber(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBlack9004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Card number",
                  style: CustomTextStyles.bodySmall11,
                ),
                SizedBox(height: 6.v),
                Text(
                  "5546 8205 3693 3947",
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUserYellow800,
            height: 25.v,
            width: 32.h,
            margin: EdgeInsets.only(
              top: 9.v,
              bottom: 2.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTextFieldOrdinaryFocused(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlack9004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 16.v,
              bottom: 4.v,
            ),
            child: Text(
              "05/23",
              style: theme.textTheme.titleSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 23.v),
            child: Text(
              "Expire Date",
              style: CustomTextStyles.bodySmall11,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTextFieldOrdinaryFocused1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBlack9004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: CustomTextFormField(
              controller: cvvController,
              hintText: "CVV",
              hintStyle: CustomTextStyles.bodySmall11,
              textInputAction: TextInputAction.done,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 6.v),
                  child: Text(
                    "567",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgProfile,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckmark(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 102.h),
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text: "Set as default payment method",
          value: checkmark,
          padding: EdgeInsets.symmetric(vertical: 2.v),
          onChange: (value) {
            checkmark = value;
          },
        ),
      ),
    );
  }
}
