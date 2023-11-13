import 'package:diskusi_in/ui/call.dart';
import 'package:diskusi_in/ui/chat.dart';
import 'package:diskusi_in/ui/component/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HomeScaffold extends StatelessWidget {
  HomeScaffold({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey("ScaffoldWithNestedNavigation"));

  final StatefulNavigationShell navigationShell;

  final PageController _pageController = PageController();

  void _goBranch(int index) {
    _pageController.jumpToPage(index);
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(
          "assets/images/ic_empty_search.svg",
        ),
        actions: [
          IconButton(
            onPressed: () => context.infoSnackbar("Hello"),
            icon: const Icon(Icons.settings_suggest_rounded),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) => _goBranch(value),
        children: const [
          Chat(),
          Call(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: _goBranch,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.chat), label: "Chat"),
          NavigationDestination(icon: Icon(Icons.call), label: "Call"),
        ],
      ),
    );
  }
}
