import 'package:flutter/material.dart';
import '../presentation/sign_up_page_screen/sign_up_page_screen.dart';
import '../presentation/login_page_screen/login_page_screen.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/visual_search_screen/visual_search_screen.dart';
import '../presentation/visual_search_taking_a_photo_screen/visual_search_taking_a_photo_screen.dart';
import '../presentation/visual_search_crop_the_item_screen/visual_search_crop_the_item_screen.dart';
import '../presentation/visual_search_finding_screen/visual_search_finding_screen.dart';
import '../presentation/main_page_container_screen/main_page_container_screen.dart';
import '../presentation/main_two_screen/main_two_screen.dart';
import '../presentation/main_three_screen/main_three_screen.dart';
import '../presentation/categories_tab_container_screen/categories_tab_container_screen.dart';
import '../presentation/categories_two_screen/categories_two_screen.dart';
import '../presentation/catalog_one_screen/catalog_one_screen.dart';
import '../presentation/filters_screen/filters_screen.dart';
import '../presentation/filters_list_screen/filters_list_screen.dart';
import '../presentation/product_card_screen/product_card_screen.dart';
import '../presentation/rating_and_reviews_screen/rating_and_reviews_screen.dart';
import '../presentation/rating_and_reviews_with_photo_screen/rating_and_reviews_with_photo_screen.dart';
import '../presentation/favorites_modules_screen/favorites_modules_screen.dart';
import '../presentation/my_bag_one_screen/my_bag_one_screen.dart';
import '../presentation/my_bag_checkout_screen/my_bag_checkout_screen.dart';
import '../presentation/payment_cards_one_screen/payment_cards_one_screen.dart';
import '../presentation/shipping_addresses_screen/shipping_addresses_screen.dart';
import '../presentation/add_shipping_address_screen/add_shipping_address_screen.dart';
import '../presentation/success_screen/success_screen.dart';
import '../presentation/success_one_screen/success_one_screen.dart';
import '../presentation/my_profile_screen/my_profile_screen.dart';
import '../presentation/my_profile_my_orders_tab_container_screen/my_profile_my_orders_tab_container_screen.dart';
import '../presentation/my_profile_settings_screen/my_profile_settings_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String signUpPageScreen = '/sign_up_page_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String visualSearchScreen = '/visual_search_screen';

  static const String visualSearchTakingAPhotoScreen =
      '/visual_search_taking_a_photo_screen';

  static const String visualSearchCropTheItemScreen =
      '/visual_search_crop_the_item_screen';

  static const String visualSearchFindingScreen =
      '/visual_search_finding_screen';

  static const String mainPage = '/main_page';

  static const String mainPageContainerScreen = '/main_page_container_screen';

  static const String mainTwoScreen = '/main_two_screen';

  static const String mainThreeScreen = '/main_three_screen';

  static const String categoriesPage = '/categories_page';

  static const String categoriesTabContainerScreen =
      '/categories_tab_container_screen';

  static const String categoriesTwoScreen = '/categories_two_screen';

  static const String catalogOneScreen = '/catalog_one_screen';

  static const String catalogTwoPage = '/catalog_two_page';

  static const String filtersScreen = '/filters_screen';

  static const String filtersListScreen = '/filters_list_screen';

  static const String productCardScreen = '/product_card_screen';

  static const String ratingAndReviewsScreen = '/rating_and_reviews_screen';

  static const String ratingAndReviewsWithPhotoScreen =
      '/rating_and_reviews_with_photo_screen';

  static const String favoritesListsPage = '/favorites_lists_page';

  static const String favoritesModulesScreen = '/favorites_modules_screen';

  static const String myBagPage = '/my_bag_page';

  static const String myBagOneScreen = '/my_bag_one_screen';

  static const String myBagCheckoutScreen = '/my_bag_checkout_screen';

  static const String paymentCardsOneScreen = '/payment_cards_one_screen';

  static const String shippingAddressesScreen = '/shipping_addresses_screen';

  static const String addShippingAddressScreen = '/add_shipping_address_screen';

  static const String successScreen = '/success_screen';

  static const String successOneScreen = '/success_one_screen';

  static const String myProfileScreen = '/my_profile_screen';

  static const String myProfileMyOrdersPage = '/my_profile_my_orders_page';

  static const String myProfileMyOrdersTabContainerScreen =
      '/my_profile_my_orders_tab_container_screen';

  static const String myProfileMyOrdersOrderDetailsPage =
      '/my_profile_my_orders_order_details_page';

  static const String myProfileSettingsScreen = '/my_profile_settings_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    signUpPageScreen: (context) => SignUpPageScreen(),
    loginPageScreen: (context) => LoginPageScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    visualSearchScreen: (context) => VisualSearchScreen(),
    visualSearchTakingAPhotoScreen: (context) =>
        VisualSearchTakingAPhotoScreen(),
    visualSearchCropTheItemScreen: (context) => VisualSearchCropTheItemScreen(),
    visualSearchFindingScreen: (context) => VisualSearchFindingScreen(),
    mainPageContainerScreen: (context) => MainPageContainerScreen(),
    mainTwoScreen: (context) => MainTwoScreen(),
    mainThreeScreen: (context) => MainThreeScreen(),
    categoriesTabContainerScreen: (context) => CategoriesTabContainerScreen(),
    categoriesTwoScreen: (context) => CategoriesTwoScreen(),
    catalogOneScreen: (context) => CatalogOneScreen(),
    filtersScreen: (context) => FiltersScreen(),
    filtersListScreen: (context) => FiltersListScreen(),
    productCardScreen: (context) => ProductCardScreen(),
    ratingAndReviewsScreen: (context) => RatingAndReviewsScreen(),
    ratingAndReviewsWithPhotoScreen: (context) =>
        RatingAndReviewsWithPhotoScreen(),
    favoritesModulesScreen: (context) => FavoritesModulesScreen(),
    myBagOneScreen: (context) => MyBagOneScreen(),
    myBagCheckoutScreen: (context) => MyBagCheckoutScreen(),
    paymentCardsOneScreen: (context) => PaymentCardsOneScreen(),
    shippingAddressesScreen: (context) => ShippingAddressesScreen(),
    addShippingAddressScreen: (context) => AddShippingAddressScreen(),
    successScreen: (context) => SuccessScreen(),
    successOneScreen: (context) => SuccessOneScreen(),
    myProfileScreen: (context) => MyProfileScreen(),
    myProfileMyOrdersTabContainerScreen: (context) =>
        MyProfileMyOrdersTabContainerScreen(),
    myProfileSettingsScreen: (context) => MyProfileSettingsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
