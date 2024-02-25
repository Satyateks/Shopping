import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/app_bar/appbar_leading_image.dart';
import 'package:satyashopping/widgets/app_bar/appbar_title.dart';
import 'package:satyashopping/widgets/app_bar/custom_app_bar.dart';
import 'package:satyashopping/widgets/custom_icon_button.dart';

import '../visual_search_finding_screen/visual_search_finding_screen.dart';

class VisualSearchCropTheItemScreen extends StatelessWidget {
  const VisualSearchCropTheItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildAppBar(context),
                  SizedBox(
                      height: 629.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgD3bdd2cbe99a1c4,
                            height: 618.v,
                            width: 375.h,
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                height: 218.v,
                                width: 261.h,
                                margin: EdgeInsets.only(top: 13.v),
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgD3bdd2cbe99a1c4212x255,
                                          height: 212.v,
                                          width: 255.h,
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                              height: 6.v,
                                              width: 32.h,
                                              decoration: BoxDecoration(
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(1)))),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                              height: 6.v,
                                              width: 32.h,
                                              decoration: BoxDecoration(
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(1)))),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: SizedBox(
                                              height: 35.v,
                                              child: VerticalDivider(
                                                  width: 6.h,
                                                  thickness: 6.v,
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(1),
                                                  indent: 3.h))),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: SizedBox(
                                              height: 35.v,
                                              child: VerticalDivider(
                                                  width: 6.h,
                                                  thickness: 6.v,
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(1),
                                                  endIndent: 3.h))),
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: SizedBox(
                                              height: 32.v,
                                              child: VerticalDivider(
                                                  width: 6.h,
                                                  thickness: 6.v,
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(1)))),
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                              height: 6.v,
                                              width: 32.h,
                                              margin:
                                                  EdgeInsets.only(right: 3.h),
                                              decoration: BoxDecoration(
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(1)))),
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: SizedBox(
                                              height: 32.v,
                                              child: VerticalDivider(
                                                  width: 6.h,
                                                  thickness: 6.v,
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(1)))),
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                              height: 6.v,
                                              width: 32.h,
                                              margin:
                                                  EdgeInsets.only(left: 3.h),
                                              decoration: BoxDecoration(
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(1))))
                                    ])))
                      ]))
                ])),
            bottomNavigationBar: _buildSearchButton(context)));
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineBlack,
        child: CustomAppBar(
            leadingWidth: 32.h,
            leading: AppbarLeadingImage(
                imagePath: ImageConstant.imgArrowLeft,
                margin: EdgeInsets.only(left: 8.h, top: 8.v, bottom: 12.v),
                onTap: () {
                  onTapArrowLeft(context);
                }),
            centerTitle: true,
            title: AppbarTitle(text: "Crop the item"),
            styleType: Style.bgShadow));
  }

  /// Section Widget
  Widget _buildSearchButton(BuildContext context) {
    return Container(
        height: 52.adaptSize,
        width: 52.adaptSize,
        margin: EdgeInsets.only(left: 161.h, right: 161.h, bottom: 43.v),
        decoration: AppDecoration.white,
        child: CustomIconButton(
            height: 52.adaptSize,
            width: 52.adaptSize,
            padding: EdgeInsets.all(14.h),
            decoration: IconButtonStyleHelper.fillPrimary,
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VisualSearchFindingScreen()));
              },
              child: CustomImageView(
                  imagePath: ImageConstant.imgBaselineSearch24px),
            )));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
