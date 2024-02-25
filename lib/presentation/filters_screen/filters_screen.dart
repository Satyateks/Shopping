import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/app_bar/appbar_leading_image.dart';
import 'package:satyashopping/widgets/app_bar/appbar_title.dart';
import 'package:satyashopping/widgets/app_bar/custom_app_bar.dart';
import 'package:satyashopping/widgets/custom_elevated_button.dart';
import 'package:satyashopping/widgets/custom_outlined_button.dart';
import '../filters_screen/widgets/taginactiveordinary_item_widget.dart';
import '../filters_screen/widgets/tagselectedordinary_item_widget.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            appBar: _buildAppBar(context),
            body: SingleChildScrollView(
              child: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    _buildPriceRange(context),
                    SizedBox(height: 26.v),
                    _buildControlsSliderPrice(context),
                    SizedBox(height: 24.v),
                    _buildColors(context),
                    SizedBox(height: 24.v),
                    _buildContrast(context),
                    SizedBox(height: 24.v),
                    _buildSizes(context),
                    SizedBox(height: 24.v),
                    _buildTagInactiveOrdinary(context),
                    SizedBox(height: 24.v),
                    _buildCategory(context),
                    SizedBox(height: 24.v),
                    _buildTagSelectedOrdinary(context),
                    SizedBox(height: 24.v),
                    _buildDiscard(context)
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
        title: AppbarTitle(text: "Filters"),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildPriceRange(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
        decoration: AppDecoration.background,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text("Price range", style: theme.textTheme.titleMedium)
            ]));
  }

  /// Section Widget
  Widget _buildControlsSliderPrice(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("78", style: theme.textTheme.titleSmall),
            Text("143", style: theme.textTheme.titleSmall)
          ]),
          SizedBox(height: 1.v),
          SizedBox(
              height: 22.v,
              width: 343.h,
              child: Stack(alignment: Alignment.centerLeft, children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: 3.v,
                        width: 343.h,
                        margin: EdgeInsets.only(bottom: 7.v),
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  width: 343.h,
                                  child: Divider(color: appTheme.gray500))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                  width: 230.h,
                                  child: Divider(
                                      color: theme.colorScheme.primary,
                                      indent: 101.h)))
                        ]))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 100.h),
                        child: Row(children: [
                          Container(
                              height: 22.adaptSize,
                              width: 22.adaptSize,
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  borderRadius: BorderRadius.circular(11.h))),
                          Container(
                              height: 22.adaptSize,
                              width: 22.adaptSize,
                              margin: EdgeInsets.only(left: 86.h),
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  borderRadius: BorderRadius.circular(11.h)))
                        ])))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildColors(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v),
        decoration: AppDecoration.background,
        child: Text("Colors", style: theme.textTheme.titleMedium));
  }

  /// Section Widget
  Widget _buildContrast(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 27.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgContrast,
              height: 44.adaptSize,
              width: 44.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgMobile,
              height: 36.adaptSize,
              width: 36.adaptSize,
              margin: EdgeInsets.only(left: 20.h, top: 4.v, bottom: 4.v)),
          CustomImageView(
              imagePath: ImageConstant.imgPlay,
              height: 36.adaptSize,
              width: 36.adaptSize,
              margin: EdgeInsets.only(left: 20.h, top: 4.v, bottom: 4.v)),
          CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 36.adaptSize,
              width: 36.adaptSize,
              margin: EdgeInsets.only(left: 20.h, top: 4.v, bottom: 4.v)),
          CustomImageView(
              imagePath: ImageConstant.imgContrastPrimary,
              height: 44.adaptSize,
              width: 44.adaptSize,
              margin: EdgeInsets.only(left: 20.h)),
          CustomImageView(
              imagePath: ImageConstant.imgPlayIndigo900,
              height: 36.adaptSize,
              width: 36.adaptSize,
              margin: EdgeInsets.only(left: 20.h, top: 4.v, bottom: 4.v))
        ]));
  }

  /// Section Widget
  Widget _buildSizes(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v),
        decoration: AppDecoration.background,
        child: Text("Sizes", style: theme.textTheme.titleMedium));
  }

  /// Section Widget
  Widget _buildTagInactiveOrdinary(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Wrap(
                runSpacing: 16.v,
                spacing: 16.h,
                children: List<Widget>.generate(
                    5, (index) => TaginactiveordinaryItemWidget()))));
  }

  /// Section Widget
  Widget _buildCategory(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
        decoration: AppDecoration.background,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text("Category", style: theme.textTheme.titleMedium)
            ]));
  }

  /// Section Widget
  Widget _buildTagSelectedOrdinary(BuildContext context) {
    return Wrap(
        runSpacing: 8.v,
        spacing: 8.h,
        children: List<Widget>.generate(
            6, (index) => TagselectedordinaryItemWidget()));
  }

  /// Section Widget
  Widget _buildDiscard(BuildContext context) {
    return SizedBox(
        height: 148.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
                  decoration: AppDecoration.background,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 14.v),
                        Text("Brand", style: theme.textTheme.titleMedium)
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 44.v),
                  padding: EdgeInsets.symmetric(vertical: 20.v),
                  decoration: AppDecoration.outlineBlack900,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: CustomOutlinedButton(
                                text: "Discard",
                                margin: EdgeInsets.only(
                                    right: 11.h, bottom: 28.v))),
                        Expanded(
                            child: CustomElevatedButton(
                                height: 36.v,
                                text: "Apply",
                                margin:
                                    EdgeInsets.only(left: 11.h, bottom: 28.v),
                                buttonStyle:
                                    CustomButtonStyles.outlineRedFTL18))
                      ]))),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 33.v),
                  child: Text("adidas Originals, Jack & Jones, s.Oliver",
                      style: CustomTextStyles.bodySmall11)))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
