import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/presentation/catalog_two_page/catalog_two_page.dart';
import 'package:satyashopping/presentation/favorites_lists_page/favorites_lists_page.dart';
import 'package:satyashopping/presentation/main_page/main_page.dart';
import 'package:satyashopping/presentation/my_bag_page/my_bag_page.dart';
import 'package:satyashopping/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:satyashopping/widgets/custom_bottom_bar.dart';
import 'package:satyashopping/widgets/custom_icon_button.dart';
import 'widgets/new_item_widget.dart';
import 'widgets/productcardsalemain_item_widget.dart';

class MainTwoScreen extends StatefulWidget {
  const MainTwoScreen({Key? key}) : super(key: key);

  @override
  State<MainTwoScreen> createState() => _MainTwoScreenState();
}

class _MainTwoScreenState extends State<MainTwoScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildSmallBanner(context),
                SizedBox(height: 35.v),
                _buildTitle(context),
                SizedBox(height: 21.v),
                _buildProductCardSaleMain(context),
                SizedBox(height: 38.v),
                _buildTitle1(context),
                SizedBox(height: 22.v),
                _buildNEW(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSmallBanner(BuildContext context) {
    return SizedBox(
      height: 152.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage152x375,
            height: 152.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 152.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPexelsPhoto911677,
                    height: 152.v,
                    width: 375.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        bottom: 27.v,
                      ),
                      child: Text(
                        "Street clothes",
                        style: CustomTextStyles.displaySmallOnPrimary,
                      ),
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
  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sale",
                style: theme.textTheme.displaySmall,
              ),
              SizedBox(height: 6.v),
              Text(
                "Super summer sale",
                style: CustomTextStyles.bodySmall11,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 15.v,
              bottom: 24.v,
            ),
            child: Text(
              "View all",
              style: CustomTextStyles.bodySmallGray900,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCardSaleMain(BuildContext context) {
    return SizedBox(
      height: 280.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 16.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(width: 19.h);
        },
        itemCount: 11,
        itemBuilder: (context, index) {
          return ProductcardsalemainItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New",
                style: theme.textTheme.displaySmall,
              ),
              SizedBox(height: 5.v),
              Text(
                "You’ve never seen it before!",
                style: CustomTextStyles.bodySmall11,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20.v,
              bottom: 18.v,
            ),
            child: Text(
              "View all",
              style: CustomTextStyles.bodySmallGray900,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNEW(BuildContext context) {
    return SizedBox(
      height: 266.v,
      width: 358.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 61.v),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSignal,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSignal,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.only(left: 1.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSignal,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.only(left: 1.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSignal,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.only(left: 1.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSignal,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.only(left: 1.h),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 3.h,
                      top: 4.v,
                    ),
                    child: Text(
                      "(0)",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 113.h,
                right: 44.h,
                bottom: 23.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: CustomIconButton(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgIcon,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(
                          left: 17.h,
                          top: 27.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(
                          left: 1.h,
                          top: 27.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(
                          left: 1.h,
                          top: 27.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(
                          left: 1.h,
                          top: 27.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(
                          left: 1.h,
                          top: 27.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          top: 31.v,
                        ),
                        child: Text(
                          "(0)",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.h,
                          bottom: 5.v,
                        ),
                        child: CustomIconButton(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgIcon,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6.v),
                  Padding(
                    padding: EdgeInsets.only(left: 53.h),
                    child: Text(
                      "Mango Boy",
                      style: CustomTextStyles.bodySmall11,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 40.h),
                      child: Text(
                        "T-Shirt Sailing",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 1.h,
                bottom: 1.v,
              ),
              child: Text(
                "30",
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 23.v),
              child: Text(
                "Blouse",
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 44.v),
              child: Text(
                "OVS",
                style: CustomTextStyles.bodySmall11,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "10",
              style: theme.textTheme.titleSmall,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 266.v,
              child: ListView.separated(
                padding: EdgeInsets.only(left: 1.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 1.h,
                  );
                },
                itemCount: 5,
                itemBuilder: (context, index) {
                  return NewItemWidget();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
}
