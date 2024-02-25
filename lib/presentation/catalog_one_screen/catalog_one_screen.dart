import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/presentation/catalog_two_page/catalog_two_page.dart';
import 'package:satyashopping/presentation/favorites_lists_page/favorites_lists_page.dart';
import 'package:satyashopping/presentation/main_page/main_page.dart';
import 'package:satyashopping/presentation/my_bag_page/my_bag_page.dart';
import 'package:satyashopping/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:satyashopping/widgets/app_bar/appbar_leading_image.dart';
import 'package:satyashopping/widgets/app_bar/appbar_trailing_image.dart';
import 'package:satyashopping/widgets/app_bar/custom_app_bar.dart';
import 'package:satyashopping/widgets/custom_bottom_bar.dart';
import 'package:satyashopping/widgets/custom_floating_button.dart';
import 'widgets/productlist_item_widget.dart';
import 'widgets/tagselectedsmall_item_widget.dart';

// ignore_for_file: must_be_immutable
class CatalogOneScreen extends StatelessWidget {
  CatalogOneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              child: SizedBox(
                  width: double.maxFinite,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    _buildProductCatalog(context),
                    SizedBox(height: 16.v),
                    _buildProductList(context)
                  ])),
            ),
            bottomNavigationBar: _buildBottomBar(context),
            floatingActionButton: _buildFloatingActionButton(context)));
  }

  /// Section Widget
  Widget _buildProductCatalog(BuildContext context) {
    return SizedBox(
        height: 190.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 190.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimary.withOpacity(1),
                      boxShadow: [
                        BoxShadow(
                            color: appTheme.black900.withOpacity(0.12),
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(0, 4))
                      ]))),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 8.h, top: 8.v, right: 11.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomAppBar(
                            height: 24.v,
                            leadingWidth: 32.h,
                            leading: AppbarLeadingImage(
                                imagePath: ImageConstant.imgArrowLeft,
                                margin: EdgeInsets.only(left: 8.h),
                                onTap: () {
                                  onTapArrowLeft(context);
                                }),
                            actions: [
                              AppbarTrailingImage(
                                  imagePath: ImageConstant
                                      .imgBaselineSearch24pxGray900,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 11.h))
                            ]),
                        SizedBox(height: 31.v),
                        Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text("Women’s tops",
                                style: theme.textTheme.displaySmall))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(16.h, 156.v, 16.h, 10.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 63.h,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant
                                          .imgBaselineFilterList24px,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 5.v, bottom: 7.v),
                                      child: Text("Filters",
                                          style: CustomTextStyles
                                              .bodySmallGray900))
                                ])),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgBaselineSwapVert24px,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 6.h, top: 6.v, bottom: 6.v),
                                  child: Text("Price: lowest to high",
                                      style: CustomTextStyles.bodySmallGray900))
                            ]),
                        CustomImageView(
                            imagePath: ImageConstant.imgView,
                            height: 24.adaptSize,
                            width: 24.adaptSize)
                      ]))),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
                height: 190.v,
                child: ListView.separated(
                    padding:
                        EdgeInsets.only(left: 16.h, top: 108.v, bottom: 52.v),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 7.h);
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return TagselectedsmallItemWidget();
                    })),
          )
        ]));
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 16.v);
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return ProductlistItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
        height: 36,
        width: 36,
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        child: CustomImageView(
            imagePath: ImageConstant.imgIcon, height: 18.0.v, width: 18.0.h));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.mainPage;
      case BottomBarEnum.Shop:
        return AppRoutes.catalogTwoPage;
      case BottomBarEnum.Bag:
        return AppRoutes.myBagPage;
      case BottomBarEnum.Favorites:
        return AppRoutes.favoritesListsPage;
      case BottomBarEnum.Profile:
        return AppRoutes.myProfileMyOrdersOrderDetailsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainPage:
        return MainPage();
      case AppRoutes.catalogTwoPage:
        return CatalogTwoPage();
      case AppRoutes.myBagPage:
        return MyBagPage();
      case AppRoutes.favoritesListsPage:
        return FavoritesListsPage();
      case AppRoutes.myProfileMyOrdersOrderDetailsPage:
        return MyProfileMyOrdersOrderDetailsPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
