import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../features/home/home_page.dart';
import '../features/profile/profile_page.dart';
import '../utils/constant.dart';
import '../utils/theme.dart';


class BottomNavbar extends StatefulWidget {
  final int pageIndex;

  const BottomNavbar({Key? key, required this.pageIndex}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int? _selectedIndex;

  final List<Widget> _pages = [
    const HomePage(),
    const ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.pageIndex;
  }


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: baseColor,
      body: _pages[_selectedIndex ?? 0],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: baseColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex ?? 0,
        unselectedLabelStyle: txtThirdSubTitle.copyWith(fontWeight: FontWeight.w600, color: primaryColor),
        selectedLabelStyle: txtThirdSubTitle.copyWith(fontWeight: FontWeight.w600, color: grey),
        unselectedItemColor: grey,
        selectedItemColor: primaryColor,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              icHome,
              width: 24,
              height: 24,
            ),
            label: 'Home',
            activeIcon: SvgPicture.asset(
              icHomeActive,
              width: 24,
              height: 24,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              icProfile,
              width: 24,
              height: 24,
            ),
            label: 'Profile',
            activeIcon: SvgPicture.asset(
              icProfileActive,
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
    );
  }
}
