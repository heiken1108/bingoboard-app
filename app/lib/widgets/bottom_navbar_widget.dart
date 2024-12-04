import 'package:app/styles/app_colors.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onItemTapped;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.primaryColorLighter,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'My games',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: 'New Game',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Active Game',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.email_outlined),
          label: 'Invitations',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: AppColors.unselectedColor,
      onTap: onItemTapped, // Pass the tap directly to the parent
    );
  }
}
