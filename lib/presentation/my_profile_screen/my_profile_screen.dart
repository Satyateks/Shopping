import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/presentation/catalog_two_page/catalog_two_page.dart';
import 'package:satyashopping/presentation/favorites_lists_page/favorites_lists_page.dart';
import 'package:satyashopping/presentation/main_page/main_page.dart';
import 'package:satyashopping/presentation/my_bag_page/my_bag_page.dart';
import 'package:satyashopping/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:satyashopping/widgets/app_bar/appbar_trailing_image.dart';
import 'package:satyashopping/widgets/app_bar/custom_app_bar.dart';
import 'package:satyashopping/widgets/custom_bottom_bar.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 22.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "My profile",
                      style: theme.textTheme.displaySmall,
                    ),
                  ),
                ),
                SizedBox(height: 24.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage64x64,
                          height: 64.adaptSize,
                          width: 64.adaptSize,
                          radius: BorderRadius.circular(
                            32.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 18.h,
                            bottom: 25.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Matilda Brown",
                                style: CustomTextStyles.titleMedium18,
                              ),
                              SizedBox(height: 6.v),
                              Text(
                                "matildabrown@mail.com",
                                style: CustomTextStyles.titleSmallGray500,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 46.v),
                _buildMyOrders(context),
                SizedBox(height: 16.v),
                Opacity(
                  opacity: 0.05,
                  child: Divider(
                    color: appTheme.gray500.withOpacity(0.37),
                  ),
                ),
                SizedBox(height: 18.v),
                _buildShippingAddresses(context),
                SizedBox(height: 17.v),
                Opacity(
                  opacity: 0.05,
                  child: Divider(
                    color: appTheme.gray500.withOpacity(0.37),
                  ),
                ),
                SizedBox(height: 19.v),
                _buildPaymentMethods(context),
                SizedBox(height: 17.v),
                Opacity(
                  opacity: 0.05,
                  child: Divider(
                    color: appTheme.gray500.withOpacity(0.37),
                  ),
                ),
                SizedBox(height: 18.v),
                _buildPromoCodes(context),
                SizedBox(height: 16.v),
                Opacity(
                  opacity: 0.05,
                  child: Divider(
                    color: appTheme.gray500.withOpacity(0.37),
                  ),
                ),
                SizedBox(height: 19.v),
                _buildMyReviews(context),
                SizedBox(height: 17.v),
                Opacity(
                  opacity: 0.05,
                  child: Divider(
                    color: appTheme.gray500.withOpacity(0.37),
                  ),
                ),
                SizedBox(height: 19.v),
                _buildSettings(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
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
  Widget _buildMyOrders(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 8.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My orders",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 8.v),
              Text(
                "Already have 12 orders",
                style: CustomTextStyles.bodySmall11,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightGray500,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 6.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildShippingAddresses(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 8.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Shipping addresses",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 8.v),
              Text(
                "3 ddresses",
                style: CustomTextStyles.bodySmall11,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightGray500,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 5.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentMethods(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 8.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Payment methods",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 6.v),
              Text(
                "Visa  **34",
                style: CustomTextStyles.bodySmall11,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightGray500,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 5.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPromoCodes(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 8.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Promocodes",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 9.v),
              Text(
                "You have special promocodes",
                style: CustomTextStyles.bodySmall11,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightGray500,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 6.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMyReviews(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 8.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My reviews",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 7.v),
              Text(
                "Reviews for 4 items",
                style: CustomTextStyles.bodySmall11,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightGray500,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 5.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSettings(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 8.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Settings",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 7.v),
              Text(
                "Notifications, password",
                style: CustomTextStyles.bodySmall11,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightGray500,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 6.v,
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
