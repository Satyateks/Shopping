import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/app_bar/appbar_trailing_image.dart';
import 'package:satyashopping/widgets/app_bar/custom_app_bar.dart';
import 'package:satyashopping/widgets/custom_elevated_button.dart';
import 'package:satyashopping/widgets/custom_text_form_field.dart';
import 'widgets/productcardbaglist_item_widget.dart';

// ignore_for_file: must_be_immutable
class MyBagPage extends StatelessWidget {
  MyBagPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController promoCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 22.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "My Bag",
                  style: theme.textTheme.displaySmall,
                ),
              ),
              SizedBox(height: 24.v),
              _buildProductCardBagList(context),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.h),
                child: CustomTextFormField(
                  controller: promoCodeController,
                  hintText: "Enter your promo code",
                  textInputAction: TextInputAction.done,
                  suffix: Container(
                    padding: EdgeInsets.all(6.h),
                    margin: EdgeInsets.only(left: 30.h),
                    decoration: BoxDecoration(
                      color: appTheme.gray900,
                      borderRadius: BorderRadius.circular(
                        18.h,
                      ),
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowright,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 36.v,
                  ),
                  contentPadding: EdgeInsets.only(
                    left: 20.h,
                    top: 11.v,
                    bottom: 11.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.outlineBlackLR35,
                ),
              ),
              SizedBox(height: 28.v),
              _buildPriceRow(context),
              SizedBox(height: 27.v),
              CustomElevatedButton(
                text: "CHECK OUT",
                margin: EdgeInsets.symmetric(horizontal: 3.h),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 40.v,
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVector,
          margin: EdgeInsets.fromLTRB(15.h, 11.v, 15.h, 12.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProductCardBagList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 24.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return ProductcardbaglistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPriceRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 2.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 1.v,
              bottom: 2.v,
            ),
            child: Text(
              "Total amount:",
              style: CustomTextStyles.titleSmallGray500,
            ),
          ),
          Text(
            "124",
            style: CustomTextStyles.titleMedium18,
          ),
        ],
      ),
    );
  }
}
