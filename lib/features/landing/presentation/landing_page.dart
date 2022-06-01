import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hugeall_delivery_app/core/presentation/resources/colors.dart';

import '../../../core/presentation/resources/ui_assets.dart';
import '../../../core/presentation/routes/router.gr.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      routes: const [
        HomeRoute(),
        WalletRouter(),
        DeliveryRouter(),
        ProfileRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          backgroundColor: scaffoldBgColor,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          unselectedItemColor: Colors.black,
          selectedItemColor: primaryColor,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              label: "Home",
              icon: _NavigationIcons(
                iconName: 'home_icon.svg',
                tabsRouter: tabsRouter,
                index: 0,
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              label: "Wallet",
              icon: _NavigationIcons(
                iconName: 'navbar_wallet_icon.svg',
                tabsRouter: tabsRouter,
                index: 1,
              ),
            ),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                label: "Delivery",
                icon: _NavigationIcons(
                  iconName: 'delivery_icon.svg',
                  index: 2,
                  tabsRouter: tabsRouter,
                )),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              label: "Profile",
              icon: _NavigationIcons(
                iconName: 'profile_icon.svg',
                tabsRouter: tabsRouter,
                index: 3,
              ),
            ),
          ],
        );
      },
    );
  }
}

class _NavigationIcons extends StatelessWidget {
  final TabsRouter tabsRouter;

  ///icons from local assets
  final String iconName;
  final int index;

  const _NavigationIcons({
    Key? key,
    required this.tabsRouter,
    required this.iconName,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: SvgPicture.asset(
        UIAssets.getSvg(iconName),
        width: 18,
        color: tabsRouter.activeIndex == index ? primaryColor : Colors.grey,
      ),
    );
  }
}
