import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:satyashopping/widgets/app_bar/appbar_leading_image.dart';
import 'package:satyashopping/widgets/app_bar/custom_app_bar.dart';
import 'package:satyashopping/widgets/custom_elevated_button.dart';
import 'package:satyashopping/widgets/custom_floating_text_field.dart';
import 'package:satyashopping/widgets/custom_text_form_field.dart';

import '../visual_search_screen/visual_search_screen.dart';

// ignore_for_file: must_be_immutable
class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(vertical: 8.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Column(
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.end,
                                      children: [
                                        _buildAppBar(context),
                                        SizedBox(height: 30.v),
                                        Text("Login",
                                            style: theme.textTheme.displaySmall)
                                      ])),
                              Expanded(
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.h, vertical: 14.v),
                                      child: Column(children: [
                                        SizedBox(height: 58.v),
                                        CustomFloatingTextField(
                                            controller: emailController,
                                            labelText: "Email",
                                            labelStyle: CustomTextStyles
                                                .titleSmallOnPrimaryContainer,
                                            hintText: "Email",
                                            hintStyle: CustomTextStyles
                                                .titleSmallOnPrimaryContainer,
                                            textInputType:
                                                TextInputType.emailAddress,
                                            suffix: Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 21.h),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgOutlinecheck24px,
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize)),
                                            suffixConstraints: BoxConstraints(
                                                maxHeight: 64.v)),
                                        SizedBox(height: 8.v),
                                        CustomTextFormField(
                                            controller: passwordController,
                                            hintText: "Password",
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            obscureText: true),
                                        SizedBox(height: 14.v),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 5.v,
                                                          bottom: 4.v),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          ForgotPasswordScreen()));
                                                        },
                                                        child: Text(
                                                            "Forgot your password?",
                                                            style: theme
                                                                .textTheme
                                                                .titleSmall),
                                                      )),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRoundArrowRightAlt24px,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          left: 3.h))
                                                ])),
                                        SizedBox(height: 30.v),
                                        CustomElevatedButton(
                                          text: "LOGIN",
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        VisualSearchScreen()));
                                          },
                                        ),
                                        Spacer(),
                                        Text("Or login with social account",
                                            style: theme.textTheme.titleSmall)
                                      ])))
                            ])))),
            bottomNavigationBar: _buildSocialButtons(context)));
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
  Widget _buildSocialButtons(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 122.h, right: 87.h, bottom: 57.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
              height: 24.v,
              width: 23.h,
              margin: EdgeInsets.symmetric(vertical: 20.v),
              decoration: AppDecoration.outlineBlack9004
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder24),
              child: CustomImageView(
                  imagePath: ImageConstant.imgGoogle,
                  height: 24.v,
                  width: 23.h,
                  alignment: Alignment.center)),
          Container(
              height: 64.v,
              width: 92.h,
              margin: EdgeInsets.only(left: 50.h),
              padding: EdgeInsets.symmetric(horizontal: 34.h, vertical: 20.v),
              decoration: AppDecoration.outlineBlack9004
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder24),
              child: CustomImageView(
                  imagePath: ImageConstant.imgFacebook,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapChevron(BuildContext context) {
    Navigator.pop(context);
  }
}
