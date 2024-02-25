import 'package:flutter/material.dart';
import 'package:satyashopping/core/app_export.dart';
import 'package:satyashopping/presentation/catalog_two_page/catalog_two_page.dart';
import 'package:satyashopping/presentation/favorites_lists_page/favorites_lists_page.dart';
import 'package:satyashopping/presentation/main_page/main_page.dart';
import 'package:satyashopping/presentation/my_bag_page/my_bag_page.dart';
import 'package:satyashopping/presentation/my_profile_my_orders_order_details_page/my_profile_my_orders_order_details_page.dart';
import 'package:satyashopping/widgets/custom_bottom_bar.dart';
import 'package:satyashopping/widgets/custom_elevated_button.dart';
import 'package:satyashopping/widgets/custom_text_form_field.dart';
import 'widgets/productcardbaglist1_item_widget.dart';

class MyBagOneScreen extends StatefulWidget {
  const MyBagOneScreen({Key? key}) : super(key: key);

  @override
  State<MyBagOneScreen> createState() => _MyBagOneScreenState();
}

class _MyBagOneScreenState extends State<MyBagOneScreen> {
  TextEditingController promoCodeController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 8.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBaselineSearch24pxGray900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 31.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "My Bag ",
                      style: theme.textTheme.displaySmall,
                    ),
                  ),
                ),
                SizedBox(height: 24.v),
                _buildProductCardBagList(context),
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: CustomTextFormField(
                    controller: promoCodeController,
                    hintText: "mypromocode2020",
                    textInputAction: TextInputAction.done,
                    suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 6.v, 5.h, 6.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIconGray50040x40,
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
                    borderDecoration: TextFormFieldStyleHelper.outlineBlackTL8,
                  ),
                ),
                SizedBox(height: 28.v),
                _buildTotalAmountRow(context),
                SizedBox(height: 27.v),
                CustomElevatedButton(
                  text: "CHECK OUT",
                  margin: EdgeInsets.symmetric(horizontal: 5.h),
                ),
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
  Widget _buildProductCardBagList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 2.h,
      ),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(height: 24.v);
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return Productcardbaglist1ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalAmountRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 4.h,
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
            "112",
            style: CustomTextStyles.titleMedium18,
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
