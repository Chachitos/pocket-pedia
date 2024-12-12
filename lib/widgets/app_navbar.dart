import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:pocketpedia/pages/main/home_page.dart';
import 'package:pocketpedia/pages/main/profile_page.dart';

class AppNavbar extends StatefulWidget {
  const AppNavbar({super.key});

  @override
  State<AppNavbar> createState() => _AppNavbarState();
}

class _AppNavbarState extends State<AppNavbar> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      const Center(child: Text("Search")),
      const Center(child: Text("Add")),
      const Center(child: Text("Trash")),
      const ProfilePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: ImageIcon(AssetImage("assets/navbar/home.png")),
        // title: "Home",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: ImageIcon(AssetImage("assets/navbar/search.png")),

        // title: "Search",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Container(
          padding:
              EdgeInsets.all(8), // Espacio interno entre la imagen y el borde
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle, // Forma circular
            border: Border.all(
              color: Colors.white, // Cambia el color según lo necesites
              width: 1.5, // Ancho del borde
            ),
          ),
          child: Image.asset(
            "assets/logo.png",
            height: 30, // Ajusta el tamaño según tus necesidades
          ),
        ),
        activeColorPrimary: Colors.transparent,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: ImageIcon(AssetImage("assets/navbar/cart.png")),
        // title: "Trash",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: ImageIcon(AssetImage("assets/navbar/user.png")),
        // title: "Profile",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      confineToSafeArea: false,
      stateManagement: true,
      hideNavigationBarWhenKeyboardAppears: true,
      backgroundColor: Colors.white,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.0),
        ),
        // border: Border.all(color: Colors.blue),
        colorBehindNavBar: Colors.white,
      ),
      navBarHeight: 95, // Increased for more rounded effect.
      // margin: EdgeInsets.symmetric(vertical: ),
      navBarStyle: NavBarStyle.style15,
      padding: EdgeInsets.only(bottom: 15),
      // padding: const NavBarPadding.only(top: 0),
    );
  }
}
