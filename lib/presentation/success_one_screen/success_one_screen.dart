import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/custom_elevated_button.dart';

class SuccessOneScreen extends StatelessWidget {
  const SuccessOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBags,
                height: 210.v,
                width: 217.h,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 47.v),
              Text(
                "Success!",
                style: CustomTextStyles.displaySmallBlack900,
              ),
              SizedBox(height: 15.v),
              SizedBox(
                width: 225.h,
                child: Text(
                  "Your order will be delivered soon.\nThank you for choosing our app!",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumBlack900.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildContinueShoppingButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueShoppingButton(BuildContext context) {
    return CustomElevatedButton(
      text: "CONTINUE SHOPPING",
      margin: EdgeInsets.only(
        left: 18.h,
        right: 14.h,
        bottom: 59.v,
      ),
    );
  }
}
