import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/custom_text_form_field.dart';
import 'widgets/promocodeordinary_item_widget.dart';

// ignore_for_file: must_be_immutable
class MyBagPromoCodeBottomsheet extends StatelessWidget {
  MyBagPromoCodeBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController promoCodeController = TextEditingController();

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 60.h,
            child: Divider(
              color: appTheme.gray500,
            ),
          ),
          SizedBox(height: 32.v),
          _buildPromoCode(context),
          SizedBox(height: 32.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Your Promo Codes",
              style: CustomTextStyles.titleMedium18,
            ),
          ),
          SizedBox(height: 21.v),
          _buildPromoCodeOrdinary(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPromoCode(BuildContext context) {
    return CustomTextFormField(
      controller: promoCodeController,
      hintText: "Enter your promo code",
      textInputAction: TextInputAction.done,
      suffix: Container(
        padding: EdgeInsets.all(6.h),
        margin: EdgeInsets.only(left: 30.h),
        decoration: BoxDecoration(
          color: appTheme.gray900,
          borderRadius: BorderRadius.circular(
            18.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowright,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 36.v,
      ),
      contentPadding: EdgeInsets.only(
        left: 20.h,
        top: 11.v,
        bottom: 11.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineBlackLR35,
    );
  }

  /// Section Widget
  Widget _buildPromoCodeOrdinary(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 24.v,
        );
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return PromocodeordinaryItemWidget();
      },
    );
  }
}
