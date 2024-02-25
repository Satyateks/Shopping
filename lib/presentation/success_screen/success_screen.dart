import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/custom_elevated_button.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary.withOpacity(1),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSuccess,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 55.h,
              top: 75.v,
              right: 55.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Success!",
                  style: CustomTextStyles.displaySmallBlack900,
                ),
                SizedBox(height: 19.v),
                SizedBox(
                  width: 262.h,
                  child: Text(
                    "Your order will be delivered soon.\nThank you for choosing our app!",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleMediumBlack900_1.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                CustomElevatedButton(
                  height: 36.v,
                  width: 160.h,
                  text: "Continue shopping",
                  buttonStyle: CustomButtonStyles.outlineRedFTL18,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
