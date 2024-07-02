import 'package:shopnow/ui/screens/addresspage/address_view.dart';
import 'package:shopnow/ui/screens/catalogue/catalogue_view.dart';
import 'package:shopnow/ui/screens/category/category_view.dart';
import 'package:shopnow/ui/screens/checkoutpage/checkout_view.dart';
import 'package:shopnow/ui/screens/failurepage/failure_view.dart';
import 'package:shopnow/ui/screens/loginpage/login_view.dart';
import 'package:shopnow/ui/screens/mycart/mycart_view.dart';
import 'package:shopnow/ui/screens/newarrivals/newarrivals_view.dart';
import 'package:shopnow/ui/screens/notifications/notifications_view.dart';
import 'package:shopnow/ui/screens/orderhistory/orderhistory_view.dart';
import 'package:shopnow/ui/screens/paymentpage/payment_view.dart';
import 'package:shopnow/ui/screens/popular/popular_view.dart';
import 'package:shopnow/ui/screens/productpage/productpage_view.dart';
import 'package:shopnow/ui/screens/profile/profile_view.dart';
import 'package:shopnow/ui/screens/search/search_view.dart';
import 'package:shopnow/ui/screens/searchresults/searchresults_view.dart';
import 'package:shopnow/ui/screens/signuppage/signup_view.dart';
import 'package:shopnow/ui/screens/successpage/success_view.dart';
import 'package:shopnow/ui/screens/trackpage/track_view.dart';
import 'package:shopnow/ui/screens/welcome/welcome_view.dart';
import 'package:shopnow/ui/screens/wishlist/wishlist_view.dart';
import 'package:shopnow/ui/statuspage/status_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/api_service.dart';
import '../services/cart_service.dart';
import '../services/wishlist_service.dart';
import '../ui/screens/home/home_view.dart';
import '../ui/screens/splash/splash_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: WelcomeView,initial: true),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: CatalogueView),
    MaterialRoute(page: MycartView),
    MaterialRoute(page: WishlistView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: SearchView),
    MaterialRoute(page: PopularView),
    MaterialRoute(page: NewarrivalsView),
    MaterialRoute(page: CategoryView),
    MaterialRoute(page: NotificationsView),
    MaterialRoute(page: OrderhistoryView),
    MaterialRoute(page: ProductpageView),
    MaterialRoute(page: SearchresultsView),
    MaterialRoute(page: StatusView),
    MaterialRoute(page: TrackView),
    MaterialRoute(page: CheckoutView),
    MaterialRoute(page: PaymentView),
    MaterialRoute(page: AddressView),
    MaterialRoute(page: SuccessView),
    MaterialRoute(page: FailureView)
  ],
  dependencies: [
    LazySingleton(classType: ApiService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: WishlistService),
    LazySingleton(classType: CartService),

  ],
)
class AppSetup {}
