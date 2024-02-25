import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/presentation/catalog_two_page/catalog_two_page.dart';
import 'package:satyashopping/presentation/favorites_lists_page/favorites_lists_page.dart';
import 'package:satyashopping/presentation/main_page/main_page.dart';
import 'package:satyashopping/presentation/my_bag_page/my_bag_page.dart';
import 'package:satyashopping/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:satyashopping/presentation/my_profile_my_orders_page/my_profile_my_orders_page.dart';
import 'package:satyashopping/widgets/app_bar/appbar_leading_image.dart';
import 'package:satyashopping/widgets/app_bar/appbar_trailing_image.dart';
import 'package:satyashopping/widgets/app_bar/custom_app_bar.dart';
import 'package:satyashopping/widgets/custom_bottom_bar.dart';

class MyProfileMyOrdersTabContainerScreen extends StatefulWidget {
  const MyProfileMyOrdersTabContainerScreen({Key? key}) : super(key: key);

  @override
  MyProfileMyOrdersTabContainerScreenState createState() =>
      MyProfileMyOrdersTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class MyProfileMyOrdersTabContainerScreenState
    extends State<MyProfileMyOrdersTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SingleChildScrollView(
              child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 23.v),
                        Padding(
                            padding: EdgeInsets.only(left: 14.h),
                            child: Text("My Orders",
                                style: theme.textTheme.displaySmall)),
                        SizedBox(height: 24.v),
                        _buildTabview(context),
                        SizedBox(
                            height: 535.v,
                            child: TabBarView(
                                controller: tabviewController,
                                children: [
                                  MyProfileMyOrdersPage(),
                                  MyProfileMyOrdersPage(),
                                  MyProfileMyOrdersPage()
                                ]))
                      ])),
            ),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 40.v,
        leadingWidth: 33.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 9.h, top: 8.v, bottom: 8.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgBaselineSearch24pxGray900,
              margin: EdgeInsets.symmetric(horizontal: 11.h, vertical: 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 30.v,
        width: 323.h,
        margin: EdgeInsets.only(left: 14.h),
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.onPrimary.withOpacity(1),
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Metropolis',
                fontWeight: FontWeight.w500),
            unselectedLabelColor: appTheme.gray900,
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Metropolis',
                fontWeight: FontWeight.w500),
            indicator: BoxDecoration(
                color: appTheme.gray900,
                borderRadius: BorderRadius.circular(15.h)),
            tabs: [
              Tab(child: Text("Delivered")),
              Tab(child: Text("Processing")),
              Tab(child: Text("Cancelled"))
            ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
