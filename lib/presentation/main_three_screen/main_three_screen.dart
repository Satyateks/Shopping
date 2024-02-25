import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/presentation/catalog_two_page/catalog_two_page.dart';
import 'package:satyashopping/presentation/favorites_lists_page/favorites_lists_page.dart';
import 'package:satyashopping/presentation/main_page/main_page.dart';
import 'package:satyashopping/presentation/my_bag_page/my_bag_page.dart';
import 'package:satyashopping/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:satyashopping/widgets/custom_bottom_bar.dart';

class MainThreeScreen extends StatefulWidget {
  const MainThreeScreen({Key? key}) : super(key: key);

  @override
  State<MainThreeScreen> createState() => _MainThreeScreenState();
}

class _MainThreeScreenState extends State<MainThreeScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            _buildMainStack(context),
            _buildTitleStack(context),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomBar(context),
    );
  }

  /// Section Widget
  Widget _buildMainStack(BuildContext context) {
    return SizedBox(
      height: 322.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage4322x375,
            height: 322.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 29.v,
              ),
              decoration: AppDecoration.gradientBlackToGray,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 201.v),
                  Text(
                    "New collection",
                    style: CustomTextStyles.displaySmallOnPrimary_1,
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
  Widget _buildTitleStack(BuildContext context) {
    return SizedBox(
      height: 374.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage2187x187,
            height: 187.adaptSize,
            width: 187.adaptSize,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage2374x188,
            height: 374.v,
            width: 188.h,
            alignment: Alignment.centerRight,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 187.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 15.h,
                          vertical: 55.v,
                        ),
                        decoration: AppDecoration.fillOnPrimary,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 3.v),
                            SizedBox(
                              width: 140.h,
                              child: Text(
                                "Summer\nsale",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.displaySmallPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 114.v),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: Text(
                          "Black",
                          style: CustomTextStyles.displaySmallOnPrimary_1,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 98.v,
                      bottom: 32.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 18.h,
                      vertical: 52.v,
                    ),
                    decoration: AppDecoration.gradientBlackToBlack900,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 27.v),
                        SizedBox(
                          width: 133.h,
                          child: Text(
                            "Men’s\nhoodies",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.displaySmallOnPrimary_1,
                          ),
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
