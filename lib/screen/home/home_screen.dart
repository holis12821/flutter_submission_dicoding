import 'package:flutter/material.dart';
import 'package:flutter_submission_dicoding/screen/home/home_view.dart';
import 'package:flutter_submission_dicoding/utils/constants.dart';
import 'package:flutter_submission_dicoding/widget/icon_badge.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: List.generate(4, (index) => const HomeView()),
      ),
      bottomNavigationBar: BottomAppBar(
        color: theme.primaryColor,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 7.0),
            barIcon(icon: Icons.home, page: 0),
            barIcon(icon: Icons.favorite, page: 1),
            barIcon(icon: Icons.mode_comment, page: 2, badge: true),
            barIcon(icon: Icons.person, page: 3),
            const SizedBox(width: 7.0),
          ],
        ),
      ),
    );
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  Widget barIcon(
      {IconData icon = Icons.home, int page = 0, bool badge = false}) {
    return IconButton(
      onPressed: () => _pageController.jumpToPage(page),
      icon: badge
          ? IconBadge(
              icon: icon,
              size: 24.0,
            )
          : Icon(
              icon,
              size: 24.0,
            ),
      color: _page == page ? Constants.accentColor : Colors.blueGrey[300],
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
