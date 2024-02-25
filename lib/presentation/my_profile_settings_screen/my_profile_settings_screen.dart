import 'package:flutter/material.dart';import 'package:satyashopping/core/app_export.dart';import 'package:satyashopping/widgets/app_bar/appbar_leading_image.dart';import 'package:satyashopping/widgets/app_bar/appbar_trailing_image.dart';import 'package:satyashopping/widgets/app_bar/custom_app_bar.dart';import 'package:satyashopping/widgets/custom_floating_text_field.dart';import 'package:satyashopping/widgets/custom_switch.dart';import 'package:satyashopping/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class MyProfileSettingsScreen extends StatelessWidget {MyProfileSettingsScreen({Key? key}) : super(key: key);

TextEditingController fullNameController = TextEditingController();

TextEditingController passwordController = TextEditingController();

bool isSelectedSwitch = false;

bool isSelectedSwitch1 = false;

bool isSelectedSwitch2 = false;

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 22.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Settings", style: theme.textTheme.displaySmall), SizedBox(height: 22.v), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("Personal Information", style: theme.textTheme.titleMedium)), SizedBox(height: 21.v), Padding(padding: EdgeInsets.only(left: 2.h), child: CustomTextFormField(controller: fullNameController, hintText: "Full name")), SizedBox(height: 24.v), _buildTextFieldOrdinaryFocused(context), SizedBox(height: 54.v), _buildPasswordRow(context), SizedBox(height: 20.v), Padding(padding: EdgeInsets.only(left: 2.h), child: CustomFloatingTextField(controller: passwordController, labelText: "Password", labelStyle: CustomTextStyles.bodyMediumGray50013, hintText: "Password", hintStyle: CustomTextStyles.bodyMediumGray50013, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, obscureText: true, contentPadding: EdgeInsets.fromLTRB(20.h, 28.v, 20.h, 20.v))), SizedBox(height: 54.v), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("Notifications", style: theme.textTheme.titleMedium)), SizedBox(height: 23.v), _buildLine1(context), SizedBox(height: 24.v), _buildLine2(context), SizedBox(height: 24.v), _buildLine3(context), SizedBox(height: 5.v)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 40.v, leadingWidth: 33.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 9.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgBaselineSearch24pxGray900, margin: EdgeInsets.symmetric(horizontal: 11.h, vertical: 8.v))]); } 
/// Section Widget
Widget _buildTextFieldOrdinaryFocused(BuildContext context) { return Container(margin: EdgeInsets.only(left: 2.h), padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 13.v), decoration: AppDecoration.outlineBlack9004.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(bottom: 25.v), child: Text("Date of Birth", style: CustomTextStyles.bodySmall11)), Padding(padding: EdgeInsets.only(top: 18.v, bottom: 4.v), child: Text("12/12/1989", style: theme.textTheme.bodyMedium))])); } 
/// Section Widget
Widget _buildPasswordRow(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 2.h, right: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Password", style: theme.textTheme.titleMedium), Padding(padding: EdgeInsets.only(top: 2.v), child: Text("Change", style: CustomTextStyles.titleSmallGray500))])); } 
/// Section Widget
Widget _buildLine1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 2.h, right: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 2.v, bottom: 3.v), child: Text("Sales", style: theme.textTheme.titleSmall)), CustomSwitch(value: isSelectedSwitch, onChange: (value) {isSelectedSwitch = value;})])); } 
/// Section Widget
Widget _buildLine2(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 2.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 2.v, bottom: 3.v), child: Text("New arrivals", style: theme.textTheme.titleSmall)), CustomSwitch(value: isSelectedSwitch1, onChange: (value) {isSelectedSwitch1 = value;})])); } 
/// Section Widget
Widget _buildLine3(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 2.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 3.v, bottom: 2.v), child: Text("Delivery status changes", style: theme.textTheme.titleSmall)), CustomSwitch(value: isSelectedSwitch2, onChange: (value) {isSelectedSwitch2 = value;})])); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
