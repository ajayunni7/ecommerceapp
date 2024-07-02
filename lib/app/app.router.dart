// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i26;
import 'package:flutter/material.dart';
import 'package:shopnow/models/product.dart' as _i27;
import 'package:shopnow/ui/screens/addresspage/address_view.dart' as _i23;
import 'package:shopnow/ui/screens/catalogue/catalogue_view.dart' as _i7;
import 'package:shopnow/ui/screens/category/category_view.dart' as _i14;
import 'package:shopnow/ui/screens/checkoutpage/checkout_view.dart' as _i21;
import 'package:shopnow/ui/screens/failurepage/failure_view.dart' as _i25;
import 'package:shopnow/ui/screens/home/home_view.dart' as _i3;
import 'package:shopnow/ui/screens/loginpage/login_view.dart' as _i5;
import 'package:shopnow/ui/screens/mycart/mycart_view.dart' as _i8;
import 'package:shopnow/ui/screens/newarrivals/newarrivals_view.dart' as _i13;
import 'package:shopnow/ui/screens/notifications/notifications_view.dart'
    as _i15;
import 'package:shopnow/ui/screens/orderhistory/orderhistory_view.dart' as _i16;
import 'package:shopnow/ui/screens/paymentpage/payment_view.dart' as _i22;
import 'package:shopnow/ui/screens/popular/popular_view.dart' as _i12;
import 'package:shopnow/ui/screens/productpage/productpage_view.dart' as _i17;
import 'package:shopnow/ui/screens/profile/profile_view.dart' as _i10;
import 'package:shopnow/ui/screens/search/search_view.dart' as _i11;
import 'package:shopnow/ui/screens/searchresults/searchresults_view.dart'
    as _i18;
import 'package:shopnow/ui/screens/signuppage/signup_view.dart' as _i6;
import 'package:shopnow/ui/screens/splash/splash_view.dart' as _i2;
import 'package:shopnow/ui/screens/successpage/success_view.dart' as _i24;
import 'package:shopnow/ui/screens/trackpage/track_view.dart' as _i20;
import 'package:shopnow/ui/screens/welcome/welcome_view.dart' as _i4;
import 'package:shopnow/ui/screens/wishlist/wishlist_view.dart' as _i9;
import 'package:shopnow/ui/statuspage/status_view.dart' as _i19;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i28;

class Routes {
  static const splashView = '/splash-view';

  static const homeView = '/home-view';

  static const welcomeView = '/';

  static const loginView = '/login-view';

  static const signupView = '/signup-view';

  static const catalogueView = '/catalogue-view';

  static const mycartView = '/mycart-view';

  static const wishlistView = '/wishlist-view';

  static const profileView = '/profile-view';

  static const searchView = '/search-view';

  static const popularView = '/popular-view';

  static const newarrivalsView = '/newarrivals-view';

  static const categoryView = '/category-view';

  static const notificationsView = '/notifications-view';

  static const orderhistoryView = '/orderhistory-view';

  static const productpageView = '/productpage-view';

  static const searchresultsView = '/searchresults-view';

  static const statusView = '/status-view';

  static const trackView = '/track-view';

  static const checkoutView = '/checkout-view';

  static const paymentView = '/payment-view';

  static const addressView = '/address-view';

  static const successView = '/success-view';

  static const failureView = '/failure-view';

  static const all = <String>{
    splashView,
    homeView,
    welcomeView,
    loginView,
    signupView,
    catalogueView,
    mycartView,
    wishlistView,
    profileView,
    searchView,
    popularView,
    newarrivalsView,
    categoryView,
    notificationsView,
    orderhistoryView,
    productpageView,
    searchresultsView,
    statusView,
    trackView,
    checkoutView,
    paymentView,
    addressView,
    successView,
    failureView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.splashView,
      page: _i2.SplashView,
    ),
    _i1.RouteDef(
      Routes.homeView,
      page: _i3.HomeView,
    ),
    _i1.RouteDef(
      Routes.welcomeView,
      page: _i4.WelcomeView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i5.LoginView,
    ),
    _i1.RouteDef(
      Routes.signupView,
      page: _i6.SignupView,
    ),
    _i1.RouteDef(
      Routes.catalogueView,
      page: _i7.CatalogueView,
    ),
    _i1.RouteDef(
      Routes.mycartView,
      page: _i8.MycartView,
    ),
    _i1.RouteDef(
      Routes.wishlistView,
      page: _i9.WishlistView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i10.ProfileView,
    ),
    _i1.RouteDef(
      Routes.searchView,
      page: _i11.SearchView,
    ),
    _i1.RouteDef(
      Routes.popularView,
      page: _i12.PopularView,
    ),
    _i1.RouteDef(
      Routes.newarrivalsView,
      page: _i13.NewarrivalsView,
    ),
    _i1.RouteDef(
      Routes.categoryView,
      page: _i14.CategoryView,
    ),
    _i1.RouteDef(
      Routes.notificationsView,
      page: _i15.NotificationsView,
    ),
    _i1.RouteDef(
      Routes.orderhistoryView,
      page: _i16.OrderhistoryView,
    ),
    _i1.RouteDef(
      Routes.productpageView,
      page: _i17.ProductpageView,
    ),
    _i1.RouteDef(
      Routes.searchresultsView,
      page: _i18.SearchresultsView,
    ),
    _i1.RouteDef(
      Routes.statusView,
      page: _i19.StatusView,
    ),
    _i1.RouteDef(
      Routes.trackView,
      page: _i20.TrackView,
    ),
    _i1.RouteDef(
      Routes.checkoutView,
      page: _i21.CheckoutView,
    ),
    _i1.RouteDef(
      Routes.paymentView,
      page: _i22.PaymentView,
    ),
    _i1.RouteDef(
      Routes.addressView,
      page: _i23.AddressView,
    ),
    _i1.RouteDef(
      Routes.successView,
      page: _i24.SuccessView,
    ),
    _i1.RouteDef(
      Routes.failureView,
      page: _i25.FailureView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.SplashView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.SplashView(),
        settings: data,
      );
    },
    _i3.HomeView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.HomeView(),
        settings: data,
      );
    },
    _i4.WelcomeView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.WelcomeView(),
        settings: data,
      );
    },
    _i5.LoginView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.LoginView(),
        settings: data,
      );
    },
    _i6.SignupView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.SignupView(),
        settings: data,
      );
    },
    _i7.CatalogueView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.CatalogueView(),
        settings: data,
      );
    },
    _i8.MycartView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.MycartView(),
        settings: data,
      );
    },
    _i9.WishlistView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.WishlistView(),
        settings: data,
      );
    },
    _i10.ProfileView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.ProfileView(),
        settings: data,
      );
    },
    _i11.SearchView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.SearchView(),
        settings: data,
      );
    },
    _i12.PopularView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.PopularView(),
        settings: data,
      );
    },
    _i13.NewarrivalsView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.NewarrivalsView(),
        settings: data,
      );
    },
    _i14.CategoryView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.CategoryView(),
        settings: data,
      );
    },
    _i15.NotificationsView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.NotificationsView(),
        settings: data,
      );
    },
    _i16.OrderhistoryView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.OrderhistoryView(),
        settings: data,
      );
    },
    _i17.ProductpageView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.ProductpageView(),
        settings: data,
      );
    },
    _i18.SearchresultsView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i18.SearchresultsView(),
        settings: data,
      );
    },
    _i19.StatusView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i19.StatusView(),
        settings: data,
      );
    },
    _i20.TrackView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i20.TrackView(),
        settings: data,
      );
    },
    _i21.CheckoutView: (data) {
      final args = data.getArgs<CheckoutViewArguments>(nullOk: false);
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => _i21.CheckoutView(
            key: args.key,
            cartItems: args.cartItems,
            totalAmount: args.totalAmount),
        settings: data,
      );
    },
    _i22.PaymentView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i22.PaymentView(),
        settings: data,
      );
    },
    _i23.AddressView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i23.AddressView(),
        settings: data,
      );
    },
    _i24.SuccessView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i24.SuccessView(),
        settings: data,
      );
    },
    _i25.FailureView: (data) {
      return _i26.MaterialPageRoute<dynamic>(
        builder: (context) => const _i25.FailureView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class CheckoutViewArguments {
  const CheckoutViewArguments({
    this.key,
    required this.cartItems,
    required this.totalAmount,
  });

  final _i26.Key? key;

  final List<_i27.Product> cartItems;

  final double totalAmount;

  @override
  String toString() {
    return '{"key": "$key", "cartItems": "$cartItems", "totalAmount": "$totalAmount"}';
  }

  @override
  bool operator ==(covariant CheckoutViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.cartItems == cartItems &&
        other.totalAmount == totalAmount;
  }

  @override
  int get hashCode {
    return key.hashCode ^ cartItems.hashCode ^ totalAmount.hashCode;
  }
}

extension NavigatorStateExtension on _i28.NavigationService {
  Future<dynamic> navigateToSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.splashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWelcomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.welcomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCatalogueView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.catalogueView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMycartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.mycartView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWishlistView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.wishlistView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSearchView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.searchView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPopularView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.popularView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNewarrivalsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.newarrivalsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCategoryView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.categoryView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNotificationsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.notificationsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOrderhistoryView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.orderhistoryView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProductpageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.productpageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSearchresultsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.searchresultsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStatusView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.statusView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTrackView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.trackView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCheckoutView({
    _i26.Key? key,
    required List<_i27.Product> cartItems,
    required double totalAmount,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.checkoutView,
        arguments: CheckoutViewArguments(
            key: key, cartItems: cartItems, totalAmount: totalAmount),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPaymentView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.paymentView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAddressView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.addressView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSuccessView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.successView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFailureView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.failureView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.splashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithWelcomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.welcomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCatalogueView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.catalogueView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMycartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.mycartView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithWishlistView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.wishlistView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSearchView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.searchView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPopularView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.popularView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNewarrivalsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.newarrivalsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCategoryView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.categoryView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNotificationsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.notificationsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOrderhistoryView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.orderhistoryView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProductpageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.productpageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSearchresultsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.searchresultsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStatusView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.statusView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTrackView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.trackView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCheckoutView({
    _i26.Key? key,
    required List<_i27.Product> cartItems,
    required double totalAmount,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.checkoutView,
        arguments: CheckoutViewArguments(
            key: key, cartItems: cartItems, totalAmount: totalAmount),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPaymentView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.paymentView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAddressView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.addressView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSuccessView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.successView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFailureView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.failureView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
