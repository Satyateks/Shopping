import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/custom_elevated_button.dart';
import 'package:satyashopping/widgets/custom_icon_button.dart';
import 'widgets/mainpage_item_widget.dart';

// ignore_for_file: must_be_immutable
class MainPage extends StatelessWidget {
  const MainPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.background,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 492.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage362x375,
                        height: 362.v,
                        width: 375.h,
                        alignment: Alignment.topCenter,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 492.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage492x375,
                                height: 492.v,
                                width: 375.h,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10.h,
                                    vertical: 32.v,
                                  ),
                                  decoration:
                                      AppDecoration.gradientBlackToBlack,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 206.v),
                                      Container(
                                        width: 190.h,
                                        margin: EdgeInsets.only(left: 5.h),
                                        child: Text(
                                          "Fashion\nsale",
                                          maxLines: null,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .displayMediumOnPrimary,
                                        ),
                                      ),
                                      SizedBox(height: 18.v),
                                      CustomElevatedButton(
                                        height: 36.v,
                                        width: 160.h,
                                        text: "Check",
                                        buttonStyle:
                                            CustomButtonStyles.outlineRedFTL18,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 31.v),
                _buildTitleRow(context),
                SizedBox(height: 22.v),
                _buildNewProductStack(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitleRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New",
                style: theme.textTheme.displaySmall,
              ),
              SizedBox(height: 5.v),
              Text(
                "You’ve never seen it before!",
                style: CustomTextStyles.bodySmall11,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20.v,
              bottom: 18.v,
            ),
            child: Text(
              "View all",
              style: CustomTextStyles.bodySmallGray900,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNewProductStack(BuildContext context) {
    return SizedBox(
      height: 266.v,
      width: 361.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 65.v),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSignal,
                    height: 12.v,
                    width: 10.h,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSignal,
                    height: 12.v,
                    width: 14.h,
                    margin: EdgeInsets.only(left: 1.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSignal,
                    height: 12.v,
                    width: 14.h,
                    margin: EdgeInsets.only(left: 1.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSignal,
                    height: 12.v,
                    width: 14.h,
                    margin: EdgeInsets.only(left: 1.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSignal,
                    height: 12.v,
                    width: 14.h,
                    margin: EdgeInsets.only(left: 1.h),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 3.v,
                    ),
                    child: Text(
                      "(0)",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 114.h,
                right: 46.h,
                bottom: 23.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: CustomIconButton(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgIcon,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(
                          left: 17.h,
                          top: 27.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(
                          left: 1.h,
                          top: 27.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(
                          left: 1.h,
                          top: 27.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(
                          left: 1.h,
                          top: 27.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(
                          left: 1.h,
                          top: 27.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          top: 31.v,
                        ),
                        child: Text(
                          "(0)",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.h,
                          bottom: 5.v,
                        ),
                        child: CustomIconButton(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgIcon,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6.v),
                  Padding(
                    padding: EdgeInsets.only(left: 53.h),
                    child: Text(
                      "Mango Boy",
                      style: CustomTextStyles.bodySmall11,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 40.h),
                      child: Text(
                        "T-Shirt Sailing",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text(
                "30",
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 1.h,
                bottom: 27.v,
              ),
              child: Text(
                "Blouse",
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 1.h,
                bottom: 47.v,
              ),
              child: Text(
                "OVS",
                style: CustomTextStyles.bodySmall11,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "10",
              style: theme.textTheme.titleSmall,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 266.v,
              child: ListView.separated(
                padding: EdgeInsets.only(left: 2.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 1.h,
                  );
                },
                itemCount: 6,
                itemBuilder: (context, index) {
                  return MainpageItemWidget();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
