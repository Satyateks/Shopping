import 'package:flutter/material.dart';import 'package:satyashopping/core/app_export.dart';import 'package:satyashopping/widgets/app_bar/appbar_leading_image.dart';import 'package:satyashopping/widgets/app_bar/appbar_title.dart';import 'package:satyashopping/widgets/app_bar/custom_app_bar.dart';import 'package:satyashopping/widgets/custom_elevated_button.dart';import 'package:satyashopping/widgets/custom_outlined_button.dart';import 'package:satyashopping/widgets/custom_search_view.dart';import 'widgets/filterslist_item_widget.dart';
// ignore_for_file: must_be_immutable
class FiltersListScreen extends StatelessWidget {FiltersListScreen({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 21.v), child: Column(children: [CustomSearchView(controller: searchController, hintText: "Search"), SizedBox(height: 22.v), _buildFiltersList(context)])), bottomNavigationBar: _buildSixteen(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 8.h, top: 8.v, bottom: 12.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarTitle(text: "Brand"), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildFiltersList(BuildContext context) { return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 28.v);}, itemCount: 10, itemBuilder: (context, index) {return FilterslistItemWidget();}); } 
/// Section Widget
Widget _buildSixteen(BuildContext context) { return Container(margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 48.v), decoration: AppDecoration.outlineBlack900, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomOutlinedButton(text: "Discard", margin: EdgeInsets.only(right: 11.h))), Expanded(child: CustomElevatedButton(height: 36.v, text: "Apply", margin: EdgeInsets.only(left: 11.h), buttonStyle: CustomButtonStyles.outlineRedFTL18))])); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
