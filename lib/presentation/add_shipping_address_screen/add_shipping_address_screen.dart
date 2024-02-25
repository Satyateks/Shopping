import 'package:flutter/material.dart';import 'package:satyashopping/core/app_export.dart';import 'package:satyashopping/widgets/app_bar/appbar_leading_image.dart';import 'package:satyashopping/widgets/app_bar/appbar_title.dart';import 'package:satyashopping/widgets/app_bar/custom_app_bar.dart';import 'package:satyashopping/widgets/custom_elevated_button.dart';import 'package:satyashopping/widgets/custom_floating_text_field.dart';
// ignore_for_file: must_be_immutable
class AddShippingAddressScreen extends StatelessWidget {AddShippingAddressScreen({Key? key}) : super(key: key);

TextEditingController fullNameTextFieldController = TextEditingController();

TextEditingController addressTextFieldController = TextEditingController();

TextEditingController cityTextFieldController = TextEditingController();

TextEditingController stateTextFieldController = TextEditingController();

TextEditingController zipcodeTextFieldController = TextEditingController();

TextEditingController countryTextFieldController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 35.v), child: Column(children: [_buildFullNameTextField(context), SizedBox(height: 20.v), _buildAddressTextField(context), SizedBox(height: 20.v), _buildCityTextField(context), SizedBox(height: 20.v), _buildStateTextField(context), SizedBox(height: 20.v), _buildZipcodeTextField(context), SizedBox(height: 20.v), _buildCountryTextField(context), SizedBox(height: 40.v), _buildSaveAddressButton(context), SizedBox(height: 5.v)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 8.h, top: 8.v, bottom: 12.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarTitle(text: "Adding Shipping Address"), styleType: Style.bgShadow); } 
/// Section Widget
Widget _buildFullNameTextField(BuildContext context) { return CustomFloatingTextField(controller: fullNameTextFieldController, labelText: "Full name", labelStyle: CustomTextStyles.titleSmallGray500, hintText: "Full name", contentPadding: EdgeInsets.fromLTRB(20.h, 24.v, 20.h, 25.v)); } 
/// Section Widget
Widget _buildAddressTextField(BuildContext context) { return CustomFloatingTextField(controller: addressTextFieldController, labelText: "Address", labelStyle: theme.textTheme.bodyMedium!, hintText: "Address"); } 
/// Section Widget
Widget _buildCityTextField(BuildContext context) { return CustomFloatingTextField(controller: cityTextFieldController, labelText: "City", labelStyle: theme.textTheme.bodyMedium!, hintText: "City"); } 
/// Section Widget
Widget _buildStateTextField(BuildContext context) { return CustomFloatingTextField(controller: stateTextFieldController, labelText: "State/Province/Region", labelStyle: theme.textTheme.bodyMedium!, hintText: "State/Province/Region"); } 
/// Section Widget
Widget _buildZipcodeTextField(BuildContext context) { return CustomFloatingTextField(controller: zipcodeTextFieldController, labelText: "Zip Code (Postal Code)", labelStyle: theme.textTheme.bodyMedium!, hintText: "Zip Code (Postal Code)", textInputType: TextInputType.number); } 
/// Section Widget
Widget _buildCountryTextField(BuildContext context) { return CustomFloatingTextField(controller: countryTextFieldController, labelText: "Country", labelStyle: theme.textTheme.bodyMedium!, hintText: "Country", textInputAction: TextInputAction.done); } 
/// Section Widget
Widget _buildSaveAddressButton(BuildContext context) { return CustomElevatedButton(text: "SAVE ADDRESS"); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
