import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/presentation/catalog_two_page/catalog_two_page.dart';
import 'package:satyashopping/presentation/categories_page/categories_page.dart';
import 'package:satyashopping/presentation/favorites_lists_page/favorites_lists_page.dart';
import 'package:satyashopping/presentation/main_page/main_page.dart';
import 'package:satyashopping/presentation/my_bag_page/my_bag_page.dart';
import 'package:satyashopping/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:satyashopping/widgets/app_bar/appbar_leading_image.dart';
import 'package:satyashopping/widgets/app_bar/appbar_title.dart';
import 'package:satyashopping/widgets/app_bar/appbar_trailing_image.dart';
import 'package:satyashopping/widgets/app_bar/custom_app_bar.dart';
import 'package:satyashopping/widgets/custom_bottom_bar.dart';

class CategoriesTabContainerScreen extends StatefulWidget {
  const CategoriesTabContainerScreen({Key? key}) : super(key: key);

  @override
  CategoriesTabContainerScreenState createState() =>
      CategoriesTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class CategoriesTabContainerScreenState
    extends State<CategoriesTabContainerScreen> with TickerProviderStateMixin {
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
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildTabview(context),
                  SizedBox(
                      height: 597.v,
                      child: TabBarView(
                          controller: tabviewController,
                          children: [
                            CategoriesPage(),
                            CategoriesPage(),
                            CategoriesPage()
                          ]))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 32.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 8.h, top: 8.v, bottom: 12.v),
            onTap: () => onTapArrowLeft(context)),
        centerTitle: true,
        title: AppbarTitle(text: "Categories"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgBaselineSearch24pxGray900,
              margin: EdgeInsets.fromLTRB(11.h, 8.v, 11.h, 12.v))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 44.v,
        width: double.maxFinite,
        decoration:
            BoxDecoration(color: theme.colorScheme.onPrimary.withOpacity(1)),
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.gray900,
            labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Metropolis',
                fontWeight: FontWeight.w600),
            unselectedLabelColor: appTheme.gray900,
            unselectedLabelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Metropolis',
                fontWeight: FontWeight.w400),
            indicatorColor: theme.colorScheme.primary,
            tabs: [
              Tab(child: Text("Women")),
              Tab(child: Text("Men")),
              Tab(child: Text("Kids"))
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
