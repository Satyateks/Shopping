import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/presentation/catalog_two_page/catalog_two_page.dart';
import 'package:satyashopping/presentation/favorites_lists_page/favorites_lists_page.dart';
import 'package:satyashopping/presentation/main_page/main_page.dart';
import 'package:satyashopping/presentation/my_bag_page/my_bag_page.dart';
import 'package:satyashopping/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:satyashopping/widgets/app_bar/appbar_title.dart';
import 'package:satyashopping/widgets/app_bar/appbar_trailing_image.dart';
import 'package:satyashopping/widgets/app_bar/custom_app_bar.dart';
import 'package:satyashopping/widgets/custom_bottom_bar.dart';
import 'widgets/productcardsection_item_widget.dart';
import 'widgets/tags1_item_widget.dart';

class FavoritesModulesScreen extends StatefulWidget {
  const FavoritesModulesScreen({Key? key}) : super(key: key);

  @override
  State<FavoritesModulesScreen> createState() => _FavoritesModulesScreenState();
}

class _FavoritesModulesScreenState extends State<FavoritesModulesScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            _buildHeadSection(context),
            _buildProductCardSection(context),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomBarSection(context),
    );
  }

  /// Section Widget
  Widget _buildHeadSection(BuildContext context) {
    return SizedBox(
      height: 136.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: AppDecoration.outlineBlack9002,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomAppBar(
                    centerTitle: true,
                    title: AppbarTitle(
                      text: "Favorites",
                    ),
                    actions: [
                      AppbarTrailingImage(
                        imagePath: ImageConstant.imgBaselineSearch24pxGray900,
                        margin: EdgeInsets.fromLTRB(11.h, 8.v, 11.h, 12.v),
                      ),
                    ],
                    styleType: Style.bgFill,
                  ),
                  SizedBox(height: 56.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 13.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgBaselineFilterList24px,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 7.h,
                            top: 5.v,
                            bottom: 7.v,
                          ),
                          child: Text(
                            "Filters ",
                            style: CustomTextStyles.bodySmallGray900,
                          ),
                        ),
                        Spacer(flex: 48),
                        SizedBox(
                          width: 136.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgBaselineSwapVert24px,
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
                        ),
                        Spacer(flex: 51),
                        CustomImageView(
                          imagePath: ImageConstant.imgView,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 136.v,
              child: ListView.separated(
                padding: EdgeInsets.only(
                  left: 15.h,
                  top: 51.v,
                  bottom: 55.v,
                ),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(width: 12.h);
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Tags1ItemWidget();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCardSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 185.v,
          crossAxisCount: 2,
          mainAxisSpacing: 19.h,
          crossAxisSpacing: 19.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return ProductcardsectionItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
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
