import 'package:flutter/material.dart';import 'package:satyashopping/core/app_export.dart';import 'package:satyashopping/widgets/app_bar/appbar_leading_image.dart';import 'package:satyashopping/widgets/app_bar/appbar_title.dart';import 'package:satyashopping/widgets/app_bar/custom_app_bar.dart';import 'package:satyashopping/widgets/custom_checkbox_button.dart';import 'package:satyashopping/widgets/custom_elevated_button.dart';import 'widgets/reviewwithphotoslist_item_widget.dart';
// ignore_for_file: must_be_immutable
class RatingAndReviewsWithPhotoScreen extends StatelessWidget {RatingAndReviewsWithPhotoScreen({Key? key}) : super(key: key);

bool withphoto = false;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(height: 724.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [SizedBox(width: double.maxFinite, child: Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 16.h, right: 31.h), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildWithphotoRow(context), SizedBox(height: 28.v), _buildReviewWithPhotosList(context)])))), Align(alignment: Alignment.bottomCenter, child: Container(height: 135.v, width: double.maxFinite, margin: EdgeInsets.only(bottom: 34.v), decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [theme.colorScheme.onPrimary.withOpacity(0.22), theme.colorScheme.onPrimary.withOpacity(1)])))), CustomElevatedButton(height: 36.v, width: 128.h, text: "Write a review", margin: EdgeInsets.only(right: 17.h, bottom: 44.v), leftIcon: Container(margin: EdgeInsets.only(right: 4.h), child: CustomImageView(imagePath: ImageConstant.imgIconOnprimary, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.outlineRedFTL18, buttonTextStyle: theme.textTheme.labelMedium!, alignment: Alignment.bottomRight)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 8.h, top: 8.v, bottom: 12.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarTitle(text: "Rating and reviews"), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildWithphotoRow(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("8 reviews", style: CustomTextStyles.headlineSmallGray900), Padding(padding: EdgeInsets.only(top: 2.v), child: CustomCheckboxButton(text: "With photo", value: withphoto, padding: EdgeInsets.symmetric(vertical: 2.v), onChange: (value) {withphoto = value;}))])); } 
/// Section Widget
Widget _buildReviewWithPhotosList(BuildContext context) { return Expanded(child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 15.v);}, itemCount: 2, itemBuilder: (context, index) {return ReviewwithphotoslistItemWidget();})); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
