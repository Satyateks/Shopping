import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/app_bar/appbar_leading_image.dart';
import 'package:satyashopping/widgets/app_bar/appbar_title.dart';
import 'package:satyashopping/widgets/app_bar/appbar_trailing_image.dart';
import 'package:satyashopping/widgets/app_bar/custom_app_bar.dart';
import 'package:satyashopping/widgets/custom_elevated_button.dart';
import 'package:satyashopping/widgets/custom_icon_button.dart';
import 'package:satyashopping/widgets/custom_rating_bar.dart';
import 'package:satyashopping/widgets/custom_text_form_field.dart';
import 'widgets/productcardlist_item_widget.dart';

// ignore_for_file: must_be_immutable
class ProductCardScreen extends StatefulWidget {
  const ProductCardScreen({Key? key}) : super(key: key);

  @override
  State<ProductCardScreen> createState() => _ProductCardScreenState();
}

class _ProductCardScreenState extends State<ProductCardScreen> {
  TextEditingController sizeController = TextEditingController();

  TextEditingController dropdownSelectedController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildLineStack(context),
                          SizedBox(height: 12.v),
                          _buildSizeRow(context),
                          SizedBox(height: 23.v),
                          _buildHmRow(context),
                          SizedBox(height: 2.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("Short black dress",
                                      style: CustomTextStyles.bodySmall11))),
                          SizedBox(height: 8.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Row(children: [
                                    CustomRatingBar(initialRating: 0),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, top: 3.v),
                                        child: Text("(10)",
                                            style: theme.textTheme.bodySmall))
                                  ]))),
                          SizedBox(height: 18.v),
                          _buildAddToCartStack(context),
                          SizedBox(height: 13.v),
                          Opacity(opacity: 0.25, child: Divider()),
                          SizedBox(height: 16.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("Shipping info",
                                      style: theme.textTheme.bodyLarge))),
                          SizedBox(height: 16.v),
                          Opacity(opacity: 0.25, child: Divider()),
                          SizedBox(height: 15.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("Support",
                                      style: theme.textTheme.bodyLarge))),
                          SizedBox(height: 16.v),
                          Opacity(opacity: 0.25, child: Divider()),
                          SizedBox(height: 24.v),
                          _buildYouCanAlsoLikeRow(context),
                          SizedBox(height: 15.v),
                          _buildProductCardList(context)
                        ]))))));
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
        title: AppbarTitle(text: "Short dress"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgBaselineShare24px,
              margin: EdgeInsets.fromLTRB(14.h, 8.v, 14.h, 12.v))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildLineStack(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 413.v,
              width: 275.h,
              child: Stack(alignment: Alignment.bottomLeft, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgImage413x275,
                    height: 413.v,
                    width: 275.h,
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: SizedBox(
                        width: 125.h, child: Divider(color: appTheme.gray900)))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgImage413x276,
              height: 413.v,
              width: 276.h,
              margin: EdgeInsets.only(left: 4.h))
        ])));
  }

  /// Section Widget
  Widget _buildSize(BuildContext context) {
    return CustomTextFormField(
        width: 118.h,
        autofocus: false,
        controller: sizeController,
        hintText: "Size",
        contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v));
  }

  /// Section Widget
  Widget _buildDropdownSelected(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: CustomTextFormField(
            width: 137.h,
            autofocus: false,
            controller: dropdownSelectedController,
            hintText: "Black",
            textInputAction: TextInputAction.done,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v)));
  }

  /// Section Widget
  Widget _buildSizeRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildSize(context),
          _buildDropdownSelected(context),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: CustomIconButton(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  child: CustomImageView(imagePath: ImageConstant.imgIcon)))
        ]));
  }

  /// Section Widget
  Widget _buildHmRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("H&M", style: CustomTextStyles.headlineSmallGray900_1),
          Text("19.99", style: CustomTextStyles.headlineSmallGray900_1)
        ]));
  }

  /// Section Widget
  Widget _buildAddToCartButton(BuildContext context) {
    return CustomElevatedButton(text: "ADD TO CART");
  }

  /// Section Widget
  Widget _buildAddToCartStack(BuildContext context) {
    return SizedBox(
        height: 156.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  width: 315.h,
                  margin: EdgeInsets.only(left: 16.h),
                  child: Text(
                      "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodyMedium!.copyWith(height: 1.50)))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, bottom: 3.v),
                  child:
                      Text("Item details", style: theme.textTheme.bodyLarge))),
          Opacity(
              opacity: 0.25,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 33.v),
                      child: SizedBox(width: 374.h, child: Divider())))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v),
                  decoration: AppDecoration.white,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 24.v),
                    _buildAddToCartButton(context)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildYouCanAlsoLikeRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("You can also like this", style: CustomTextStyles.titleMedium18),
          Padding(
              padding: EdgeInsets.only(top: 4.v, bottom: 2.v),
              child: Text("12 items", style: CustomTextStyles.bodySmall11))
        ]));
  }

  /// Section Widget
  Widget _buildProductCardList(BuildContext context) {
    return SizedBox(
        height: 262.v,
        child: ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 13.h);
            },
            itemCount: 7,
            itemBuilder: (context, index) {
              return ProductcardlistItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
