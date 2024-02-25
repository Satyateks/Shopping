import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/app_bar/appbar_leading_image.dart';
import 'package:satyashopping/widgets/app_bar/appbar_title.dart';
import 'package:satyashopping/widgets/app_bar/custom_app_bar.dart';
import 'package:satyashopping/widgets/custom_elevated_button.dart';

class MyBagCheckoutScreen extends StatelessWidget {
  const MyBagCheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 6.v),
                        Text("Shipping address",
                            style: theme.textTheme.titleMedium),
                        SizedBox(height: 20.v),
                        _buildShippingAddress(context),
                        SizedBox(height: 57.v),
                        _buildPaymentMethod(context),
                        SizedBox(height: 16.v),
                        Row(children: [
                          Container(
                              height: 38.v,
                              width: 64.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 6.v),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgUserYellow800,
                                  height: 25.v,
                                  width: 32.h,
                                  alignment: Alignment.center)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 17.h, top: 13.v, bottom: 10.v),
                              child: Text("**** **** **** 3947",
                                  style: theme.textTheme.bodyMedium))
                        ]),
                        SizedBox(height: 51.v),
                        Text("Delivery method",
                            style: theme.textTheme.titleMedium),
                        SizedBox(height: 20.v),
                        _buildTelevision(context),
                        SizedBox(height: 52.v),
                        _buildOrderSummary(context),
                        SizedBox(height: 18.v),
                        Padding(
                            padding: EdgeInsets.only(right: 3.h),
                            child: _buildSummary(context,
                                summaryText: "Delivery:", priceText: "15")),
                        SizedBox(height: 17.v),
                        Padding(
                            padding: EdgeInsets.only(right: 4.h),
                            child: _buildSummary(context,
                                summaryText: "Summary:", priceText: "127"))
                      ])),
            ),
            bottomNavigationBar: _buildSubmitOrder(context)));
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
        title: AppbarTitle(text: "Checkout"),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildShippingAddress(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 18.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text("Jane Doe",
                                style: theme.textTheme.titleSmall)),
                        Text("Change",
                            style: CustomTextStyles.titleSmallPrimary)
                      ])),
              SizedBox(height: 11.v),
              Container(
                  width: 235.h,
                  margin: EdgeInsets.only(left: 5.h, right: 57.h),
                  child: Text(
                      "3 Newbridge Court \r\nChino Hills, CA 91709, United States",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodyMedium!.copyWith(height: 1.50)))
            ]));
  }

  /// Section Widget
  Widget _buildPaymentMethod(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 23.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Payment", style: theme.textTheme.titleMedium),
          Text("Change", style: CustomTextStyles.titleSmallPrimary)
        ]));
  }

  /// Section Widget
  Widget _buildTelevision(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: Container(
              margin: EdgeInsets.only(right: 11.h),
              padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 15.v),
              decoration: AppDecoration.outlineBlack
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgTelevision,
                        height: 17.v,
                        width: 61.h),
                    SizedBox(height: 11.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 5.h),
                            child: Text(" 2-3 days",
                                style: CustomTextStyles.bodySmall11)))
                  ]))),
      Expanded(
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 11.h),
              padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 15.v),
              decoration: AppDecoration.outlineBlack
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                SizedBox(height: 8.v),
                CustomImageView(
                    imagePath: ImageConstant.imgSettings,
                    height: 10.v,
                    width: 82.h),
                SizedBox(height: 11.v),
                Text(" 2-3 days", style: CustomTextStyles.bodySmall11)
              ]))),
      Expanded(
          child: Container(
              margin: EdgeInsets.only(left: 11.h),
              padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v),
              decoration: AppDecoration.outlineBlack
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgTelevisionAmberA400,
                        height: 16.v,
                        width: 71.h),
                    SizedBox(height: 11.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 11.h),
                            child: Text(" 2-3 days",
                                style: CustomTextStyles.bodySmall11)))
                  ])))
    ]);
  }

  /// Section Widget
  Widget _buildOrderSummary(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text("Order:", style: CustomTextStyles.titleSmallGray500)),
          Text("112", style: theme.textTheme.titleMedium)
        ]));
  }

  /// Section Widget
  Widget _buildSubmitOrder(BuildContext context) {
    return CustomElevatedButton(
        text: "SUBMIT ORDER",
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 47.v));
  }

  /// Common widget
  Widget _buildSummary(
    BuildContext context, {
    required String summaryText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(summaryText,
              style: CustomTextStyles.titleMediumGray500
                  .copyWith(color: appTheme.gray500))),
      Text(priceText,
          style:
              CustomTextStyles.titleMedium18.copyWith(color: appTheme.gray900))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
