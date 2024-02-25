import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/app_bar/appbar_leading_image.dart';
import 'package:satyashopping/widgets/app_bar/appbar_title.dart';
import 'package:satyashopping/widgets/app_bar/custom_app_bar.dart';
import 'package:satyashopping/widgets/custom_floating_button.dart';
import 'widgets/userprofile_item_widget.dart';

class ShippingAddressesScreen extends StatelessWidget {
  const ShippingAddressesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 36.v),
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 24.v);
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return UserprofileItemWidget();
                    })),
            floatingActionButton: _buildFloatingActionButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 32.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 8.h, top: 8.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Shipping Addresses"),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
        height: 36,
        width: 36,
        backgroundColor: appTheme.gray900,
        decoration: FloatingButtonStyleHelper.fillGray,
        child: CustomImageView(
            imagePath: ImageConstant.imgGridOnprimary,
            height: 18.0.v,
            width: 18.0.h));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
