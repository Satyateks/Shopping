import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/app_bar/appbar_leading_image.dart';
import 'package:satyashopping/widgets/app_bar/appbar_title.dart';
import 'package:satyashopping/widgets/app_bar/custom_app_bar.dart';
import 'package:satyashopping/widgets/custom_checkbox_button.dart';
import 'package:satyashopping/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class PaymentCardsOneScreen extends StatelessWidget {
  PaymentCardsOneScreen({Key? key}) : super(key: key);

  bool useAsDefaultPayment = false;

  bool calendar = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 31.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Your payment cards",
                            style: theme.textTheme.titleMedium),
                        SizedBox(height: 28.v),
                        _buildPaymentCard(context),
                        SizedBox(height: 26.v),
                        _buildUseAsDefaultPayment(context),
                        SizedBox(height: 39.v),
                        _buildSettingsCard(context),
                        SizedBox(height: 25.v),
                        _buildCalendar(context),
                        SizedBox(height: 3.v),
                        CustomIconButton(
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                            padding: EdgeInsets.all(6.h),
                            decoration: IconButtonStyleHelper.outlineBlackTL182,
                            alignment: Alignment.centerRight,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgGridOnprimary)),
                        SizedBox(height: 5.v)
                      ])),
            )));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 32.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 8.h, top: 8.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Payment methods"),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildPaymentCard(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: appTheme.gray900,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Container(
            height: 216.v,
            width: 343.h,
            decoration: AppDecoration.outlineBlack9005
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Stack(alignment: Alignment.topRight, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgVector109x280,
                  height: 109.v,
                  width: 280.h,
                  alignment: Alignment.bottomLeft),
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse,
                  height: 150.v,
                  width: 153.h,
                  alignment: Alignment.topRight),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgGrid,
                                height: 24.v,
                                width: 32.h,
                                radius: BorderRadius.circular(8.h)),
                            SizedBox(height: 26.v),
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "* * * *  * * * *  * * * *",
                                      style: CustomTextStyles
                                          .headlineSmallffffffff_1),
                                  TextSpan(
                                      text: "  3947",
                                      style: CustomTextStyles
                                          .headlineSmallffffffff)
                                ]),
                                textAlign: TextAlign.left),
                            SizedBox(height: 48.v),
                            Row(children: [
                              _buildCardHolderName(context,
                                  cardHolderName: "Card Holder Name",
                                  userName: "Jennyfer Doe"),
                              Spacer(flex: 55),
                              _buildExpiryDate(context,
                                  expiryDateText: "Expiry Date",
                                  dateText: "05/23"),
                              Spacer(flex: 44),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgUserYellow80025x32,
                                  height: 25.v,
                                  width: 32.h,
                                  radius: BorderRadius.circular(8.h),
                                  margin: EdgeInsets.only(bottom: 5.v))
                            ])
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildUseAsDefaultPayment(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 99.h),
        child: CustomCheckboxButton(
            text: "Use as default payment method",
            value: useAsDefaultPayment,
            padding: EdgeInsets.symmetric(vertical: 2.v),
            onChange: (value) {
              useAsDefaultPayment = value;
            }));
  }

  /// Section Widget
  Widget _buildSettingsCard(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: appTheme.gray500,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Container(
            height: 216.v,
            width: 343.h,
            decoration: AppDecoration.outlineBlack9006
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Stack(alignment: Alignment.topRight, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgVector109x280,
                  height: 109.v,
                  width: 280.h,
                  alignment: Alignment.bottomLeft),
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse150x153,
                  height: 150.v,
                  width: 153.h,
                  alignment: Alignment.topRight),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 24.h, top: 19.v, right: 24.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgSettingsOnprimary,
                                height: 16.v,
                                width: 50.h,
                                radius: BorderRadius.circular(8.h),
                                alignment: Alignment.centerRight),
                            SizedBox(height: 41.v),
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "* * * *  * * * *  * * * *",
                                      style: CustomTextStyles
                                          .headlineSmallffffffff_1),
                                  TextSpan(
                                      text: "  4546",
                                      style: CustomTextStyles
                                          .headlineSmallffffffff)
                                ]),
                                textAlign: TextAlign.left),
                            SizedBox(height: 10.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgGrid,
                                height: 24.v,
                                width: 32.h,
                                radius: BorderRadius.circular(8.h)),
                            SizedBox(height: 22.v),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  _buildCardHolderName(context,
                                      cardHolderName: "Card Holder Name",
                                      userName: "Jennyfer Doe"),
                                  _buildExpiryDate(context,
                                      expiryDateText: "Expiry Date",
                                      dateText: "11/22")
                                ])
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 99.h),
        child: CustomCheckboxButton(
            text: "Use as default payment method",
            value: calendar,
            padding: EdgeInsets.symmetric(vertical: 1.v),
            onChange: (value) {
              calendar = value;
            }));
  }

  /// Common widget
  Widget _buildCardHolderName(
    BuildContext context, {
    required String cardHolderName,
    required String userName,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(cardHolderName,
          style: CustomTextStyles.labelMedium10
              .copyWith(color: theme.colorScheme.onPrimary.withOpacity(1))),
      SizedBox(height: 7.v),
      Align(
          alignment: Alignment.center,
          child: Text(userName,
              style: CustomTextStyles.titleSmallOnPrimary
                  .copyWith(color: theme.colorScheme.onPrimary.withOpacity(1))))
    ]);
  }

  /// Common widget
  Widget _buildExpiryDate(
    BuildContext context, {
    required String expiryDateText,
    required String dateText,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(expiryDateText,
          style: CustomTextStyles.labelMedium10
              .copyWith(color: theme.colorScheme.onPrimary.withOpacity(1))),
      SizedBox(height: 6.v),
      Text(dateText,
          style: CustomTextStyles.titleSmallOnPrimary
              .copyWith(color: theme.colorScheme.onPrimary.withOpacity(1)))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
