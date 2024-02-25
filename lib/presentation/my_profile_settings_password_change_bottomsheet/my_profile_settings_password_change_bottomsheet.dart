import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/custom_elevated_button.dart';
import 'package:satyashopping/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MyProfileSettingsPasswordChangeBottomsheet extends StatelessWidget {
  MyProfileSettingsPasswordChangeBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController passwordFieldController = TextEditingController();

  TextEditingController newPasswordFieldController = TextEditingController();

  TextEditingController confirmNewPasswordFieldController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.background.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL34,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 196.h,
              child: Divider(
                color: appTheme.gray500,
                indent: 136.h,
              ),
            ),
          ),
          SizedBox(height: 18.v),
          Text(
            "Password Change",
            style: CustomTextStyles.titleMedium18,
          ),
          SizedBox(height: 19.v),
          _buildPasswordField(context),
          SizedBox(height: 17.v),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Forgot Password?  ",
              style: CustomTextStyles.titleSmallGray500,
            ),
          ),
          SizedBox(height: 20.v),
          _buildNewPasswordField(context),
          SizedBox(height: 24.v),
          _buildConfirmNewPasswordField(context),
          SizedBox(height: 32.v),
          _buildSavePasswordButton(context),
          SizedBox(height: 34.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return CustomTextFormField(
      controller: passwordFieldController,
      hintText: "Old Password",
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildNewPasswordField(BuildContext context) {
    return CustomTextFormField(
      controller: newPasswordFieldController,
      hintText: "New Password",
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildConfirmNewPasswordField(BuildContext context) {
    return CustomTextFormField(
      controller: confirmNewPasswordFieldController,
      hintText: "Repeat New Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildSavePasswordButton(BuildContext context) {
    return CustomElevatedButton(
      text: "SAVE PASSWORD",
    );
  }
}
