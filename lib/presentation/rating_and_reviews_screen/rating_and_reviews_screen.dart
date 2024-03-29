import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/app_bar/appbar_leading_image.dart';
import 'package:satyashopping/widgets/app_bar/custom_app_bar.dart';
import 'package:satyashopping/widgets/custom_checkbox_button.dart';
import 'package:satyashopping/widgets/custom_elevated_button.dart';
import 'package:satyashopping/widgets/custom_rating_bar.dart';

// ignore_for_file: must_be_immutable
class RatingAndReviewsScreen extends StatelessWidget {
  RatingAndReviewsScreen({Key? key}) : super(key: key);

  bool withphoto = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8.v),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h, right: 91.h),
                          child: Column(children: [
                            _buildAppBar(context),
                            SizedBox(height: 30.v),
                            Text("Rating&Reviews",
                                style: theme.textTheme.displaySmall)
                          ])),
                      SizedBox(height: 37.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                            _buildRatingBlock(context),
                            SizedBox(height: 31.v),
                            SizedBox(
                                height: 724.v,
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 16.h, right: 30.h),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    _buildWithphoto(context),
                                                    SizedBox(height: 28.v),
                                                    _buildReview1(context),
                                                    SizedBox(height: 19.v),
                                                    _buildReview2(context)
                                                  ]))),
                                      _buildWriteAReview(context)
                                    ]))
                          ])))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 24.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgChevron,
            margin: EdgeInsets.fromLTRB(15.h, 4.v, 351.h, 4.v),
            onTap: () {
              onTapChevron(context);
            }));
  }

  /// Section Widget
  Widget _buildRatingBlock(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 15.h, right: 30.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 35.v),
              child: Column(children: [
                Text("4.3", style: theme.textTheme.displayMedium),
                SizedBox(height: 4.v),
                Text("23 ratings", style: CustomTextStyles.bodyMediumGray500_1)
              ])),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 27.h, top: 3.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomRatingBar(initialRating: 0),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.h, top: 3.v, bottom: 3.v),
                                  child: SizedBox(
                                      height: 8.v,
                                      width: 114.h,
                                      child: ClipRRect(
                                          child: LinearProgressIndicator(
                                              value: 0)))),
                              Padding(
                                  padding: EdgeInsets.only(left: 23.h),
                                  child: Text("12",
                                      style:
                                          CustomTextStyles.bodyMediumGray800))
                            ]),
                        SizedBox(height: 5.v),
                        Container(
                            width: 219.h,
                            margin: EdgeInsets.only(left: 15.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomRatingBar(
                                      initialRating: 0, itemCount: 4),
                                  Container(
                                      height: 8.v,
                                      width: 40.h,
                                      margin: EdgeInsets.only(
                                          left: 9.h, top: 3.v, bottom: 3.v),
                                      decoration: BoxDecoration(
                                          color: theme.colorScheme.primary,
                                          borderRadius:
                                              BorderRadius.circular(4.h))),
                                  Spacer(),
                                  Text("5",
                                      style: CustomTextStyles.bodyMediumGray800)
                                ])),
                        SizedBox(height: 5.v),
                        Container(
                            width: 203.h,
                            margin: EdgeInsets.only(left: 30.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomRatingBar(
                                      initialRating: 0, itemCount: 3),
                                  Container(
                                      height: 8.v,
                                      width: 29.h,
                                      margin: EdgeInsets.only(
                                          left: 9.h, top: 3.v, bottom: 3.v),
                                      decoration: BoxDecoration(
                                          color: theme.colorScheme.primary,
                                          borderRadius:
                                              BorderRadius.circular(4.h))),
                                  Spacer(),
                                  Text("4",
                                      style: CustomTextStyles.bodyMediumGray800)
                                ])),
                        SizedBox(height: 5.v),
                        Container(
                            width: 190.h,
                            margin: EdgeInsets.only(left: 45.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                      width: 30.h,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgSignalOrange300,
                                                    height: 14.adaptSize,
                                                    width: 14.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        right: 1.h))),
                                            Expanded(
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgSignalOrange300,
                                                    height: 14.adaptSize,
                                                    width: 14.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        left: 1.h)))
                                          ])),
                                  Container(
                                      height: 8.v,
                                      width: 15.h,
                                      margin: EdgeInsets.only(
                                          left: 9.h, top: 3.v, bottom: 3.v),
                                      decoration: BoxDecoration(
                                          color: theme.colorScheme.primary,
                                          borderRadius:
                                              BorderRadius.circular(4.h))),
                                  Spacer(),
                                  Text("2",
                                      style: CustomTextStyles.bodyMediumGray800)
                                ])),
                        SizedBox(height: 6.v),
                        Container(
                            width: 174.h,
                            margin: EdgeInsets.only(left: 60.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgSignalOrange300,
                                      height: 14.adaptSize,
                                      width: 14.adaptSize),
                                  Container(
                                      height: 8.adaptSize,
                                      width: 8.adaptSize,
                                      margin: EdgeInsets.only(
                                          left: 10.h, top: 3.v, bottom: 3.v),
                                      decoration: BoxDecoration(
                                          color: theme.colorScheme.primary,
                                          borderRadius:
                                              BorderRadius.circular(4.h))),
                                  Spacer(),
                                  Text("0",
                                      style: CustomTextStyles.bodyMediumGray800)
                                ]))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildWithphoto(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("8 reviews", style: CustomTextStyles.headlineSmallGray900),
      Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: CustomCheckboxButton(
              text: "With photo",
              value: withphoto,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              onChange: (value) {
                withphoto = value;
              }))
    ]);
  }

  /// Section Widget
  Widget _buildReview1(BuildContext context) {
    return SizedBox(
        height: 313.v,
        width: 327.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.only(left: 16.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 15.v),
                  decoration: AppDecoration.outlineBlack9001
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 4.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: Text("Helene Moore",
                                    style:
                                        CustomTextStyles.titleSmallSemiBold))),
                        SizedBox(height: 6.v),
                        Padding(
                            padding: EdgeInsets.only(left: 13.h, right: 10.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 1.v),
                                      child: CustomRatingBar(initialRating: 0)),
                                  Padding(
                                      padding: EdgeInsets.only(top: 4.v),
                                      child: Text("June 5, 2019",
                                          style: CustomTextStyles.bodySmall11))
                                ])),
                        SizedBox(height: 12.v),
                        Opacity(
                            opacity: 0.8,
                            child: Container(
                                width: 267.h,
                                margin:
                                    EdgeInsets.only(left: 14.h, right: 10.h),
                                child: Text(
                                    "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7\" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.",
                                    maxLines: 9,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.bodyMediumGray900
                                        .copyWith(height: 1.50)))),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 10.v, bottom: 1.v),
                                      child: Text("Helpful",
                                          style: CustomTextStyles.bodySmall11)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgIconGray500,
                                      height: 22.v,
                                      width: 24.h,
                                      margin: EdgeInsets.only(left: 3.h))
                                ]))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgAvatar,
              height: 32.adaptSize,
              width: 32.adaptSize,
              alignment: Alignment.topLeft)
        ]));
  }

  /// Section Widget
  Widget _buildReview2(BuildContext context) {
    return SizedBox(
        height: 340.v,
        width: 327.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(left: 16.h),
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 18.v),
              decoration: AppDecoration.outlineBlack9002
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: Text("Kate Doe",
                            style: CustomTextStyles.titleSmallSemiBold),
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.only(left: 13.h, right: 10.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: 74.h,
                                margin: EdgeInsets.only(bottom: 1.v),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgSignalOrange300,
                                              height: 14.adaptSize,
                                              width: 14.adaptSize)),
                                      Expanded(
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgSignalOrange300,
                                            height: 14.adaptSize,
                                            width: 14.adaptSize),
                                      ),
                                      Expanded(
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgSignalOrange300,
                                            height: 14.adaptSize,
                                            width: 14.adaptSize),
                                      ),
                                      Expanded(
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgSignalOrange300,
                                            height: 14.adaptSize,
                                            width: 14.adaptSize),
                                      ),
                                      Expanded(
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgSignal,
                                            height: 14.adaptSize,
                                            width: 14.adaptSize),
                                      )
                                    ])),
                            Padding(
                              padding: EdgeInsets.only(top: 4.v),
                              child: Text("June 5, 2019",
                                  style: CustomTextStyles.bodySmall11),
                            )
                          ]),
                    ),
                    SizedBox(height: 12.v),
                    Opacity(
                        opacity: 0.8,
                        child: Container(
                          width: 267.h,
                          margin: EdgeInsets.only(left: 14.h, right: 10.h),
                          child: Text(
                              "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7\" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well. Plus, I love the pockets! ",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMediumGray900
                                  .copyWith(height: 1.50)),
                        )),
                    SizedBox(height: 175.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8.v),
                              child: Text("Helpful",
                                  style: CustomTextStyles.bodySmall11),
                            ),
                            // Container(
                            //   height: 22.v,
                            //   width: 24.h,
                            //   margin: EdgeInsets.only(left: 3.h),
                            //   padding: EdgeInsets.symmetric(
                            //       horizontal: 5.h, vertical: 3.v),
                            //   decoration: AppDecoration.fillOnPrimary,
                            //   child: CustomImageView(
                            //       imagePath: ImageConstant.imgUser,
                            //       height: 13.adaptSize,
                            //       width: 13.adaptSize,
                            //       alignment: Alignment.bottomRight),
                            // ),
                          ]),
                    )
                  ]),
            ),
          ),
          CustomImageView(
              imagePath: ImageConstant.imgAvatar,
              height: 32.adaptSize,
              width: 32.adaptSize,
              alignment: Alignment.topLeft)
        ]));
  }

  /// Section Widget
  Widget _buildWriteAReview(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(bottom: 254.v),
            padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 10.v),
            decoration: AppDecoration.gradientOnPrimaryToOnPrimary,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 65.v),
                  CustomElevatedButton(
                      height: 36.v,
                      width: 128.h,
                      text: "Write a review",
                      // leftIcon: Container(
                      //   margin: EdgeInsets.only(right: 4.h),
                      //   child: CustomImageView(
                      //       imagePath: ImageConstant.imgIconOnprimary,
                      //       height: 24.adaptSize,
                      //       width: 24.adaptSize),
                      // ),
                      buttonStyle: CustomButtonStyles.outlineRedFTL18,
                      buttonTextStyle: theme.textTheme.labelMedium!)
                ])));
  }

  /// Navigates back to the previous screen.
  onTapChevron(BuildContext context) {
    Navigator.pop(context);
  }
}
