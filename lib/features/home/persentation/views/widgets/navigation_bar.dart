import 'package:chatapp/core/constants/asset_icons.dart';
import 'package:chatapp/core/themes/colors.dart';
import 'package:chatapp/features/call/persentation/views/call_view.dart';
import 'package:chatapp/features/home/persentation/views/home_view.dart';
import 'package:chatapp/features/status/persentation/views/status_view.dart';
import 'package:flutter/material.dart';

class NavigationnBar extends StatefulWidget {
  const NavigationnBar({super.key});

  @override
  State<NavigationnBar> createState() => _NavigationnBarState();
}

class _NavigationnBarState extends State<NavigationnBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeView(),
    const StatusView(),
    const CallView(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          fontSize: 18,
          color: ColorsApp.primaryColor,
        ),
        unselectedLabelStyle: const TextStyle(fontSize: 16),
        items: const [
          BottomNavigationBarItem(
            icon: AssetIcons.chat,
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: AssetIcons.status,
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: AssetIcons.call,
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}
