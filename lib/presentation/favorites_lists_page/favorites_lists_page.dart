import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/widgets/app_bar/appbar_trailing_image.dart';
import 'package:satyashopping/widgets/app_bar/custom_app_bar.dart';
import 'widgets/productlist1_item_widget.dart';
import 'widgets/tags_item_widget.dart';

// ignore_for_file: must_be_immutable
class FavoritesListsPage extends StatelessWidget {
  const FavoritesListsPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.background,
          child: Column(
            children: [
              _buildBackground(context),
              SizedBox(height: 16.v),
              _buildProductList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackground(BuildContext context) {
    return SizedBox(
      height: 192.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 192.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.gray50,
                boxShadow: [
                  BoxShadow(
                    color: appTheme.black900.withOpacity(0.12),
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(
                      0,
                      4,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(
                    height: 24.v,
                    actions: [
                      AppbarTrailingImage(
                        imagePath: ImageConstant.imgVector,
                        margin: EdgeInsets.fromLTRB(15.h, 3.v, 15.h, 4.v),
                      ),
                    ],
                  ),
                  SizedBox(height: 27.v),
                  Text(
                    "Favorites",
                    style: theme.textTheme.displaySmall,
                  ),
                  SizedBox(height: 14.v),
                  SizedBox(
                    height: 30.v,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          width: 12.h,
                        );
                      },
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return TagsItemWidget();
                      },
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Padding(
                    padding: EdgeInsets.only(right: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 63.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgBaselineFilterList24px,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 5.v,
                                  bottom: 7.v,
                                ),
                                child: Text(
                                  "Filters",
                                  style: CustomTextStyles.bodySmallGray900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgBaselineSwapVert24px,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 6.h,
                                top: 6.v,
                                bottom: 6.v,
                              ),
                              child: Text(
                                "Price: lowest to high",
                                style: CustomTextStyles.bodySmallGray900,
                              ),
                            ),
                          ],
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgViewGray900,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 1.v,
          );
        },
        itemCount: 8,
        itemBuilder: (context, index) {
          return Productlist1ItemWidget();
        },
      ),
    );
  }
}
