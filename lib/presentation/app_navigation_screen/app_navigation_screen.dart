import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Visual Search",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.visualSearchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Visual Search/Taking a photo",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.visualSearchTakingAPhotoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Visual Search/Crop the item",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.visualSearchCropTheItemScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Visual Search/Finding",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.visualSearchFindingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Main page - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mainPageContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Main Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mainTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Main Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mainThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Categories - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.categoriesTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Categories Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.categoriesTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Catalog One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.catalogOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Filters",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.filtersScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Filters/List",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.filtersListScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Product Card",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.productCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Rating and Reviews ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.ratingAndReviewsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Rating and Reviews/with photo",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.ratingAndReviewsWithPhotoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Favorites/Modules",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.favoritesModulesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My Bag One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myBagOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My Bag/Checkout",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myBagCheckoutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment cards One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentCardsOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Shipping Addresses",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.shippingAddressesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add shipping address",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addShippingAddressScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "success",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.successScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "success One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.successOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My Profile/My Orders - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.myProfileMyOrdersTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My Profile/Settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myProfileSettingsScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
