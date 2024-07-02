import 'package:shopnow/constants/fonts.gen.dart';
import 'package:shopnow/ui/screens/catalogue/catalogue_view.dart';
import 'package:shopnow/ui/screens/loginpage/login_view.dart';
import 'package:shopnow/ui/screens/mycart/mycart_view.dart';
import 'package:shopnow/ui/screens/profile/profile_view.dart';
import 'package:shopnow/ui/screens/search/search_view.dart';
import 'package:shopnow/ui/screens/signuppage/signup_view.dart';
import 'package:shopnow/ui/screens/wishlist/wishlist_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      onViewModelReady: (model) {
        model.init();
      },
      viewModelBuilder: () {
        return HomeViewModel();
      },
      builder: (BuildContext context, HomeViewModel viewModel, Widget? child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: IndexedStack(
            index: viewModel.currentIndex,
            children: const [
              CatalogueView(),
              WishlistView(),
              MycartView(),
              ProfileView(),
            ],
          ),
          bottomNavigationBar: Theme(
            data: ThemeData(
                bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                    backgroundColor: Color(0xFF317773),
                    selectedIconTheme: IconThemeData(size: 30),
                    unselectedIconTheme: IconThemeData(size: 30))),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: viewModel.currentIndex,
              onTap: viewModel.setIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: const [
                BottomNavigationBarItem(
                    label: 'Home',
                    icon: Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    ),
                    activeIcon: Icon(
                      Icons.home,
                      color: Colors.white,
                    )),
                BottomNavigationBarItem(
                    label: 'Wishlist',
                    icon: Icon(Icons.favorite_outline, color: Colors.white),
                    activeIcon: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    )),
                BottomNavigationBarItem(
                    label: 'My Cart',
                    icon:
                        Icon(Icons.shopping_cart_outlined, color: Colors.white),
                    activeIcon: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    )),
                BottomNavigationBarItem(
                    label: 'Profile',
                    icon: Icon(Icons.person_outline, color: Colors.white),
                    activeIcon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        );
      },
    );
  }
}
